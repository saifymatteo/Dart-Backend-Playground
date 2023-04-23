import 'dart:async';

import 'package:logging/logging.dart';

/// Main class for managing all users' tokens
class UserToken {
  final Map<int, String> _tokens = {};

  /// Get all tokens
  Map<int, String> get tokens => _tokens;

  /// Iterate through all tokens get the current user id
  int getUserId(String? token) =>
      _tokens.entries.firstWhere((element) => element.value == token).key;

  /// Check if user is logged in
  bool isUserLoggedIn(String? token) => _tokens.containsValue(token);

  /// Add user to logged in list and attempt to remove it after 30 minutes
  void setUserLoggedIn(MapEntry<int, String> keyAndToken) {
    _tokens.addEntries([keyAndToken]);

    Timer(const Duration(days: 1), () {
      _tokens.remove(keyAndToken.key);
      Logger.root.info('UserToken.remove: $keyAndToken');
    });
  }
}
