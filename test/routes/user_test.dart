import 'dart:io';

import 'package:backend_playground/generated/prisma_client.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../components/response/api_result.dart';
import '../../main.dart';
import '../../routes/user.dart' as route;
import '../base_uri.dart';

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  group('GET /', () {
    test('200: Person list.', () async {
      final request = Request.get(MockUriRequest.uri(path: 'user'));
      final context = _MockRequestContext();
      when(() => context.request).thenReturn(request);

      final response = await route.onRequest(context);
      final persons = await prisma.person.findMany();

      expect(response.statusCode, equals(HttpStatus.ok));

      final body = await response.json();
      final expected = await ApiResult.iterableBody(data: persons).json();

      expect(body, equals(expected));
    });

    test('200: Person.', () async {
      final request = Request.get(
        MockUriRequest.uri(path: 'user', queryParameters: {'id': '15'}),
      );
      final context = _MockRequestContext();
      when(() => context.request).thenReturn(request);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));

      final json = await response.json() as Map<String, dynamic>? ?? {};
      final data = await prisma.person
          .findUnique(where: PersonWhereUniqueInput.fromJson(json));

      final expected = await Response.json(body: data!.toJson()).json();

      expect(json, equals(expected));
    });
  });
}
