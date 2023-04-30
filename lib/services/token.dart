import 'package:backend_playground/models/login/login.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';
import 'package:uuid/uuid.dart';

/// Main class for managing all users' tokens
class TokenService {
  static const _uuid = Uuid();

  /// Iterate token from Database to get current user id from provided [header]
  Future<int?> getUserId(Map<String, String> header) async {
    final repo = GetIt.instance.get<Database>().loginSchemas;
    final userToken = header['Authorization']?.replaceAll('Bearer ', '');

    final response = await repo.queryLoginSchemas(
      QueryParams(where: "token = '$userToken'"),
    );
    if (response.isEmpty) {
      return null;
    }

    return response.first.account.id;
  }

  /// Check if user is logged in
  Future<bool> isUserLoggedIn(String? token) async {
    final repo = GetIt.instance.get<Database>().loginSchemas;
    final userToken = token?.replaceAll('Bearer ', '');

    final response = await repo.queryLoginSchemas(
      QueryParams(where: "token = '$userToken'"),
    );
    if (response.isEmpty) {
      return false;
    }
    return true;
  }

  /// Add logged in user to database
  Future<String> setUserLoggedIn(int accountId) async {
    final repo = GetIt.instance.get<Database>().loginSchemas;
    final token = _uuid.v4();

    await repo.insertOne(
      LoginSchemaInsertRequest(
        token: token,
        accountId: accountId,
        createdAt: DateTime.now(),
        expiresAt: DateTime.now().add(const Duration(days: 1)),
      ),
    );

    Logger.root.info('User $accountId logged in: $token');
    return token;
  }
}
