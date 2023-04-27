import 'dart:io';

import 'package:backend_playground/models/models.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

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
      final persons = await postgres.personSchemas.queryPersonSchemas();

      expect(response.statusCode, equals(HttpStatus.ok));

      final body = await response.json();
      final expected = [
        for (final i in persons)
          PersonModel.fromSchema(i).toJson()..remove('account')
      ];

      expect(body, equals(expected));
    });

    test('200: Person.', () async {
      const id = 1;

      final request = Request.get(
        MockUriRequest.uri(path: 'user', queryParameters: {'id': '$id'}),
      );
      final context = _MockRequestContext();
      when(() => context.request).thenReturn(request);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));

      final json = await response.json() as Map<String, dynamic>? ?? {};
      final data = await postgres.personSchemas.queryPersonSchema(id);
      if (data == null) {
        markTestSkipped('missing data');
      }

      final expected = await Response.json(
        body: PersonModel.fromSchema(data!).toJson()..remove('account'),
      ).json();

      expect(json, equals(expected));
    });
  });
}
