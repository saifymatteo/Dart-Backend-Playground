import 'package:backend_playground/exception/exception.dart';
import 'package:backend_playground/user/user.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/orm.dart';

import '../components/response/api_result.dart';
import '../components/utility/utility.dart';
import '../main.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Log incoming request
    getIt.get<Debounce>().logRequest(context.request);

    // Auth API path
    if (context.request.uri.path.contains('/account')) {
      return _handleRequest(handler, context);
    }

    // Get authorization
    final authorization = context.request.headers['Authorization'];
    final isUserLoggedIn = getIt.get<UserToken>().isUserLoggedIn(authorization);

    // Execute code before request is handled.
    if (!isUserLoggedIn) {
      return ApiResult.notAuthorized();
    }

    return _handleRequest(handler, context);
  };
}

Future<Response> _handleRequest(Handler handler, RequestContext context) async {
  try {
    return await handler(context);
  }
  // ! General Exception
  on PrismaException catch (e) {
    var code = 400;
    Map<String, Object>? error = {'error': e.message};

    if (e.message.contains('fields: (')) {
      code = 409;
      error = {
        'error': 'field(s) already exists',
        'fields': PrismaUniqueConstraintsException(
          message: e.message,
          engine: e.engine,
        ).affectedFields,
      };
    }

    return Response.json(
      statusCode: code,
      headers: context.request.headers,
      body: error,
    );
  }
  // ! Json Exception
  on CheckedFromJsonException catch (e) {
    return Response.json(
      statusCode: 400,
      headers: context.request.headers,
      body: {'error': 'missing field(s) ${e.key}'},
    );
  }
  // ! Unknown Exception
  catch (e, s) {
    return Response.json(
      statusCode: 500,
      headers: context.request.headers,
      body: {'error': e.toString(), 'stacktrace': s.toString()},
    );
  }
}
