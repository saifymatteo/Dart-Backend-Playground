import 'package:backend_playground/env/env.dart';
import 'package:stormberry/stormberry.dart';

/// Base class for [Database] service
class DatabaseService {
  /// Initialize [Database]
  Database initDatabase() => throw UnimplementedError();
}

/// Development environment for [Database]
class DevDatabaseService extends DatabaseService {
  @override
  Database initDatabase() => Database(
        debugPrint: true,
        host: Env.dbHostAddress,
        port: int.parse(Env.dbPort),
        database: Env.dbName,
        user: Env.dbUsername,
        password: Env.dbPassword,
        useSSL: true,
      );
}

/// Production environment for [Database]
class ProdDatabaseService extends DatabaseService {
  @override
  Database initDatabase() => Database(
        debugPrint: true,
        host: Env.dbHostAddress,
        port: int.parse(Env.dbPort),
        database: Env.dbName,
        user: Env.dbUsername,
        password: Env.dbPassword,
        useSSL: true,
      );
}
