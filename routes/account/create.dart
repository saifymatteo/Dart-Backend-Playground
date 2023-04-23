import 'package:backend_playground/generated/prisma_client.dart';
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

  final response = await prisma.account.create(
    data: AccountCreateInput.fromJson(json),
  );

  return Response.json(body: response);
}
