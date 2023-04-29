import 'dart:async';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/response/response.dart';
import 'package:backend_playground/services/services.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stormberry/stormberry.dart';

Handler middleware(Handler handler) {
  return (context) async {
    // Log incoming request
    GetIt.instance.get<Debounce>().logRequest(context.request);

    // Auth API path require no authentication
    if (context.request.uri.path.contains('/account')) {
      return _handleRequest(handler, context)
          .catchError((Object e, StackTrace s) {
        return Response.json(
          body: {
            'exception': 'Async Exception/Account',
            'message': e.toString(),
            'stacktrace': s.toString(),
          },
        );
      });
    }

    // Get authorization
    final authorization = context.request.headers['Authorization'];
    final isUserLoggedIn =
        await GetIt.instance.get<TokenService>().isUserLoggedIn(authorization);

    // Execute code before request is handled.
    if (!isUserLoggedIn) {
      return ApiResult.notAuthorized();
    }

    return _handleRequest(handler, context)
        .catchError((Object e, StackTrace s) {
      return Response.json(
        body: {
          'exception': 'Async Exception',
          'message': e.toString(),
          'stacktrace': s.toString(),
        },
      );
    });
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
  } on TimeoutException {
    rethrow;
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
