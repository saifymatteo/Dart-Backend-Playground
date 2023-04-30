import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/response/response.dart';
import 'package:backend_playground/services/services.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:stormberry/stormberry.dart';

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

  final username = json['username'];
  final password = json['password'];

  final response = await GetIt.I
      .get<Database>()
      .accountSchemas
      .queryAccountSchemas(
        // WHERE clause for fetching the right account
        QueryParams(where: "username = '$username' AND password = '$password'"),
      );
  if (response.isEmpty) {
    return ApiResult.notFound();
  }

  // With WHERE clause, we should get only single row
  final id = response.first.id;

  // Insert token to Database
  final token = await GetIt.I.get<TokenService>().setUserLoggedIn(id);

  return Response.json(
    body: {'user_id': id, 'token': token},
  );
}
