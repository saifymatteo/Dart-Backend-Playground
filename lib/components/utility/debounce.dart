import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:logging/logging.dart';

const _requestKey = 'request';

class Debounce {
  final Map<String, Timer> _timers = {};

  void logRequest(Request request) => debounce(
        timerKey: _requestKey,
        callback: () {
          Logger.root.info(
            '${request.method.value}: ${request.uri.path}',
          );
        },
      );

  void debounce({
    required String timerKey,
    required void Function() callback,
    Duration duration = const Duration(seconds: 1),
  }) {
    final timer = _timers[timerKey];

    if (timer != null && timer.isActive) {
      return;
    }

    _timers[timerKey]?.cancel();

    _timers[timerKey] = Timer(duration, callback);
  }
}
