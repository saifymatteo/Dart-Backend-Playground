import 'package:dart_frog/dart_frog.dart';

/// Non constructable class for convenience getter for [Response] object
abstract class ApiResult {
  /// Will return [Response] object with status code 401 and message:
  /// 'Not authorized'
  static Response notAuthorized({Map<String, Object>? header}) => Response.json(
        statusCode: 401,
        body: {'error': 'Not authorized'},
        headers: header ?? {},
      );

  /// Will return [Response] object with status code 404 and message:
  /// 'Not found'
  static Response notFound({Map<String, Object>? header}) => Response.json(
        statusCode: 404,
        body: {'error': 'Not found'},
        headers: header ?? {},
      );

  /// Will return [Response] object with status code 500 and message:
  /// 'Bad gateway'
  static Response badGateway({Map<String, Object>? header}) => Response.json(
        statusCode: 502,
        body: {'error': 'Bad Gateway'},
        headers: header ?? {},
      );

  /// Will return [Response] object with status code 400 and message:
  /// 'Bad request'
  static Response badRequest({Map<String, Object>? header}) => Response.json(
        statusCode: 400,
        body: {'error': 'Bad request'},
        headers: header ?? {},
      );

  /// Will return [Response] object with status code 405 and message:
  /// 'Method not allowed'
  static Response methodNotAllowed({Map<String, Object>? header}) =>
      Response.json(
        statusCode: 405,
        body: {'error': 'Method not allowed'},
        headers: header ?? {},
      );
}
