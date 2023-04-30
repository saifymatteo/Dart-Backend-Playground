import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/services/services.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

void initialiseDependency({required DatabaseService database}) {
  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Dependency registration
  GetIt.instance
    ..registerSingleton<Debounce>(Debounce())
    ..registerFactory(database.initDatabase)
    ..registerSingleton<TokenService>(TokenService());
}
