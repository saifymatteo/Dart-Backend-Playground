import 'dart:async';

class Debounce {
  final Map<String, Timer> _timers = {};
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
