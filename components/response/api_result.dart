import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';

/// Non constructable class for convenience getter for [Response] object
abstract class ApiResult {
  static Response notAuthorized({Map<String, Object>? header}) => Response.json(
        statusCode: 401,
        body: {'error': 'Not authorized'},
        headers: header ?? {},
      );

  static Response notFound({Map<String, Object>? header}) => Response.json(
        statusCode: 404,
        body: {'error': 'Not found'},
        headers: header ?? {},
      );

  static Response badGateway({Map<String, Object>? header}) => Response.json(
        statusCode: 502,
        body: {'error': 'Bad Gateway'},
        headers: header ?? {},
      );

  static Response badRequest({Map<String, Object>? header}) => Response.json(
        statusCode: 400,
        body: {'error': 'Bad request'},
        headers: header ?? {},
      );

  static Response methodNotAllowed({Map<String, Object>? header}) =>
      Response.json(
        statusCode: 405,
        body: {'error': 'Method not allowed'},
        headers: header ?? {},
      );

  @Deprecated('used only in prisma due to response body')
  static Response iterableBody({
    required Iterable<Object?> data,
    Map<String, Object>? header,
  }) {
    final buffer = StringBuffer('[\n');
    for (var i = 0; i < data.length; i++) {
      final json = jsonEncode(data.elementAt(i));

      if (i < data.length - 1) {
        buffer.writeln('  $json,');
      } else {
        buffer.writeln('  $json');
      }
    }
    buffer.write(']');

    return Response(
      body: buffer.toString(),
      headers: {
        'content-type': 'application/json',
        if (header != null)
          for (final i in header.entries) i.key: i.value
      },
    );
  }
}
