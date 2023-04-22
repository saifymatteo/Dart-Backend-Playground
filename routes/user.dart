import 'package:backend_playground/generated/prisma_client.dart';
import 'package:backend_playground/user/token.dart';
import 'package:dart_frog/dart_frog.dart';
import '../components/response/response.dart';
import '../main.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.delete:
      return ApiResult.methodNotAllowed();
    case HttpMethod.get:
      return _onGetRequest(context);
    case HttpMethod.head:
      return ApiResult.methodNotAllowed();
    case HttpMethod.options:
      return ApiResult.methodNotAllowed();
    case HttpMethod.patch:
      return ApiResult.methodNotAllowed();
    case HttpMethod.post:
      return _onPostRequest(context);
    case HttpMethod.put:
      return ApiResult.methodNotAllowed();
  }
}

Future<Response> _onGetRequest(RequestContext context) async {
  final query = context.request.uri.queryParameters;

  if (query.isNotEmpty) {
    if (query.containsKey('id')) {
      final id = int.tryParse(query['id'] ?? '');

      if (id == null) return ApiResult.badRequest();

      final response = await prisma.person.findFirst(
        where: PersonWhereInput(id: BigIntFilter(equals: BigInt.from(id))),
      );

      if (response == null) {
        return ApiResult.notFound();
      }

      return Response.json(body: response.toJson());
    }
    return ApiResult.badRequest();
  }

  final response = await prisma.person.findMany();

  return ApiResult.iterableBody(data: response);
}

Future<Response> _onPostRequest(RequestContext context) async {
  final json = await context.request.json() as Map<String, dynamic>? ?? {};

  if (json.isEmpty) {
    return ApiResult.badRequest();
  }

  final token = context.request.headers['Authorization'];
  final userId = getIt<UserToken>().getUserId(token);
  final user = AccountCreateNestedOneWithoutPersonInput(
    connect: AccountWhereUniqueInput(id: BigInt.from(userId)),
  );

  final response = await prisma.person.create(
    data: PersonCreateInput.fromJson({
      for (final i in json.entries) i.key: i.value,
      'account': user.toJson(),
    }),
  );

  return Response.json(body: response);
}
