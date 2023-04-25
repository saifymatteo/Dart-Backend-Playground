import 'package:dart_frog/dart_frog.dart';
import 'package:stormberry/stormberry.dart';
import 'package:uuid/uuid.dart';

import '../../components/components.dart';
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

  final response = await postgres.accountSchemas.queryAccountSchemas(
    // WHERE clause for account.username only
    QueryParams(where: "username = '${json['username']}'"),
  );
  if (response.isEmpty) {
    return ApiResult.notFound();
  }

  // With WHERE clause, we should get only single row
  final id = response.first.id;
  final token = const Uuid().v4();

  getIt.get<UserToken>().setUserLoggedIn(MapEntry(id, 'Bearer $token'));

  return Response.json(
    body: {'user_id': id, 'token': token},
  );
}
