import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/services/services.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

void initialiseDependency({required SharedDatabase database}) {
  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Dependency registration
  GetIt.instance
    ..registerSingleton<Debounce>(Debounce())
    ..registerSingleton<SharedDatabase>(database)
    ..registerFactory<Database>(
      () => GetIt.instance.get<SharedDatabase>().initDatabase(),
    )
    ..registerSingleton<TokenService>(TokenService());
}

class SharedDatabase {
  Database initDatabase() => throw UnimplementedError();
}

class DevelopmentDatabase extends SharedDatabase {
  @override
  Database initDatabase() => Database(
        debugPrint: true,
        host: Env.dbHostAddress,
        port: int.parse(Env.dbPort),
        database: Env.dbName,
        user: Env.dbUsername,
        password: Env.dbPassword,
        useSSL: true,
        isUnixSocket: false,
      );
}

class ProductionDatabase extends SharedDatabase {
  @override
  Database initDatabase() => Database(
        debugPrint: true,
        host: Env.dbHostUnixInstance,
        port: int.parse(Env.dbPort),
        database: Env.dbName,
        user: Env.dbUsername,
        password: Env.dbPassword,
        useSSL: false,
        isUnixSocket: true,
      );
}
