import 'dart:async';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/response/response.dart';
import 'package:backend_playground/states/states.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stormberry/stormberry.dart';

import '../bin/main.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Log incoming request
    getIt.get<Debounce>().logRequest(context.request);

    // Auth API path require no authentication
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
        'exception': 'PostgreSQLException',
        'message': e.message,
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
        'exception': 'CheckedFromJsonException',
        'message': 'missing field(s) ${e.key}',
      },
    );
  }
  // ! Unknown Exception
  catch (e, s) {
    return Response.json(
      statusCode: 500,
      headers: context.request.headers,
      body: {
        'exception': 'Unknown',
        'message': e.toString(),
        'stacktrace': s.toString(),
      },
    );
  }
}
