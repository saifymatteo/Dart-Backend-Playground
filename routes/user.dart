import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/response/response.dart';
import 'package:backend_playground/states/states.dart';
import 'package:dart_frog/dart_frog.dart';

import '../bin/main.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _onGetRequest(context);
    case HttpMethod.post:
      return _onPostRequest(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
      return _onPatchRequest(context);
    case HttpMethod.put:
  }
  return ApiResult.methodNotAllowed();
}

Future<Response> _onGetRequest(RequestContext context) async {
  final query = context.request.uri.queryParameters;

  if (query.isNotEmpty) {
    if (query.containsKey('id')) {
      final id = int.tryParse(query['id'] ?? '');
      if (id == null) {
        return ApiResult.badRequest();
      }

      final response = await postgres.personSchemas.queryPersonSchema(id);
      if (response == null) {
        return ApiResult.notFound();
      }

      // Remove [AccountModel] value
      final data = PersonModel.fromSchema(response).toJson()..remove('account');

      return Response.json(body: data);
    }

    return ApiResult.badRequest();
  }

  final response = await postgres.personSchemas.queryPersonSchemas();

  return Response.json(
    body: [
      for (final i in response)
        // Remove [AccountModel] value
        PersonModel.fromSchema(i).toJson()..remove('account'),
    ],
  );
}

Future<Response> _onPostRequest(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>? ?? {};

  if (json.isEmpty) {
    return ApiResult.badRequest();
  }

  final request = PersonModel.fromJson(json);
  final userId = getIt<UserToken>().getUserId(context.request.headers);
  if (userId == null) {
    return ApiResult.notAuthorized();
  }

  final insert = await postgres.personSchemas.insertOne(
    request.toSchemaInsertRequest(
      // Add [AccountModel] for account.id
      request.copyWith(account: AccountModel(id: userId)),
    ),
  );

  final response = await postgres.personSchemas.queryPersonSchema(insert);
  if (response == null) {
    return ApiResult.badGateway();
  }

  // Remove [AccountModel] value
  final data = PersonModel.fromSchema(response).toJson()..remove('account');

  return Response.json(body: data);
}

Future<Response> _onPatchRequest(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>? ?? {};
  final query = context.request.uri.queryParameters;

  if (json.isEmpty || query.isEmpty || !query.containsKey('id')) {
    return ApiResult.badRequest();
  }

  final id = int.tryParse(query['id'] ?? '');
  if (id == null) {
    return ApiResult.badRequest();
  }

  final request = PersonModel.fromJson(json);
  final userId = getIt<UserToken>().getUserId(context.request.headers);
  if (userId == null) {
    return ApiResult.notAuthorized();
  }

  await postgres.personSchemas
      .updateOne(request.toSchemaUpdateRequest(request.copyWith(id: id)));

  final response = await postgres.personSchemas.queryPersonSchema(id);
  if (response == null) {
    // Not found, provided [id] is not found
    return ApiResult.notFound();
  }

  // Remove [AccountModel] value
  final data = PersonModel.fromSchema(response).toJson()..remove('account');

  return Response.json(body: data);
}
