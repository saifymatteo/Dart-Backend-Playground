import 'package:backend_playground/models/login/login.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';
import 'package:uuid/uuid.dart';

/// Main class for managing all users' tokens
class TokenService {
  const TokenService({required LoginSchemaRepository repository})
      : _repository = repository;

  static const _uuid = Uuid();
  final LoginSchemaRepository _repository;

  /// Iterate token from Database to get current user id from provided [header]
  Future<int?> getUserId(Map<String, String> header) async {
    final userToken = header['Authorization']?.replaceAll('Bearer ', '');

    final response = await _repository.queryLoginSchemas(
      QueryParams(where: "token = '$userToken'"),
    );
    if (response.isEmpty) {
      return null;
    }

    return response.first.account.id;
  }

  /// Check if user is logged in
  Future<bool> isUserLoggedIn(String? token) async {
    final response = await _repository.queryLoginSchemas(
      QueryParams(where: "token = '$token'"),
    );
    if (response.isEmpty) {
      return false;
    }
    return true;
  }

  /// Add logged in user to database
  Future<void> setUserLoggedIn(int accountId) async {
    final token = _uuid.v4();
    await _repository.insertOne(
      LoginSchemaInsertRequest(token: token, accountId: accountId),
    );
    Logger.root.info('User $accountId logged in: $token');
  }
}
