import 'package:backend_playground/models/models.dart';
import 'package:dart_frog/dart_frog.dart';
import '../../components/response/response.dart';
import '../../main.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _onPostRequest(context);
    case HttpMethod.delete:
    case HttpMethod.get:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
  }
  return ApiResult.methodNotAllowed();
}

Future<Response> _onPostRequest(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>? ?? {};

  if (json.isEmpty) {
    return ApiResult.badRequest();
  }

  final request = AccountModel.fromJson(json);

  final insert = await postgres.accountSchemas.insertOne(
    request.toSchemaInsertRequest(request),
  );

  final response = await postgres.accountSchemas.queryAccountSchema(insert);
  if (response == null) {
    return ApiResult.badGateway();
  }

  return Response.json(
    body: AccountModel.fromSchema(response),
  );
}
