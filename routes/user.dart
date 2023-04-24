import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/user/token.dart';
import 'package:dart_frog/dart_frog.dart';
import '../components/response/response.dart';
import '../main.dart';

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

      final data = PersonModel.fromSchema(response).toJson()..remove('account');

      return Response.json(body: data);
    }

    return ApiResult.badRequest();
  }

  final response = await postgres.personSchemas.queryPersonSchemas();

  return Response.json(
    body: [
      for (final i in response)
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
  final token = context.request.headers['Authorization'];
  final userId = getIt<UserToken>().getUserId(token);
  if (userId == null) {
    return ApiResult.notAuthorized();
  }

  final insert = await postgres.personSchemas.insertOne(
    request.toSchemaInsertRequest(
      request.copyWith(account: AccountModel(id: userId)),
    ),
  );

  final response = await postgres.personSchemas.queryPersonSchema(insert);
  if (response == null) {
    return ApiResult.badGateway();
  }

  final data = PersonModel.fromSchema(response).toJson()..remove('account');

  return Response.json(body: data);
}
