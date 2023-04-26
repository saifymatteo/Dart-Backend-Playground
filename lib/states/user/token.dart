import 'dart:async';

import 'package:collection/collection.dart';
import 'package:logging/logging.dart';

/// Main class for managing all users' tokens
class UserToken {
  final Map<int, String> _tokens = {};

  /// Get all tokens
  Map<int, String> get tokens => _tokens;

  /// Iterate [_tokens] to get current user id from provided [metadata]
  int? getUserId(Map<String, String> metadata) => _tokens.entries
      .firstWhereOrNull(
        (e) => e.value == metadata['authorization']?.replaceAll('Bearer ', ''),
      )
      ?.key;

  /// Check if user is logged in
  bool isUserLoggedIn(String? token) =>
      _tokens.containsValue(token?.replaceAll('Bearer ', ''));

  /// Add user to logged in list and attempt to remove it after 30 minutes
  void setUserLoggedIn(MapEntry<int, String> keyAndToken) {
    _tokens.addEntries([keyAndToken]);

    Timer(const Duration(days: 1), () {
      _tokens.remove(keyAndToken.key);
      Logger.root.info('UserToken.remove: $keyAndToken');
    });
  }
}
