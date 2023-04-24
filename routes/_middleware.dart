import 'dart:async';

import 'package:backend_playground/user/user.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

import '../components/response/api_result.dart';
import '../components/utility/utility.dart';
import '../main.dart';

Handler middleware(Handler handler) {
  return (context) async {
    if (postgres.connection().isClosed) {
      postgres = initDatabase();
      await postgres.open();
    }

    // Log incoming request
    getIt.get<Debounce>().logRequest(context.request);
    postgres.connection().messages.listen(Logger.root.info);

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
  // ! Postgres Exception
  on PostgreSQLException catch (e) {
    return Response.json(
      statusCode: 400,
      headers: context.request.headers,
      body: {
        'type': 'PostgreSQLException',
        'error': e.message,
        if (e.stackTrace != null) 'stackTrace': e.stackTrace,
        if (e.detail != null) 'detail': e.detail,
        if (e.hint != null) 'hint': e.hint,
        if (e.trace != null) 'trace': e.trace,
        if (e.code != null) 'code': e.code,
      },
    );
  }
  // ! Json Exception
  on CheckedFromJsonException catch (e) {
    return Response.json(
      statusCode: 400,
      headers: context.request.headers,
      body: {
        'type': 'CheckedFromJsonException',
        'error': 'missing field(s) ${e.key}',
      },
    );
  }
  // ! Unknown Exception
  catch (e, s) {
    return Response.json(
      statusCode: 500,
      headers: context.request.headers,
      body: {
        'type': 'Unknown',
        'error': e.toString(),
        'stacktrace': s.toString(),
      },
    );
  }
}
