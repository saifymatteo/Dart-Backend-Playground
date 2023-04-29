import 'dart:async';
import 'dart:io';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/models/models.dart';
import 'package:backend_playground/services/services.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

/// Constant [Database] object
Database initDatabase() => Database(
      debugPrint: true,
      host: Env.dbHostAddress,
      port: int.parse(Env.dbPort),
      database: Env.dbName,
      user: Env.dbUsername,
      password: Env.dbPassword,
    );

/// Server initialization
Future<void> init(InternetAddress ip, int port) async {
  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Provider registration
  GetIt.instance
    ..registerSingleton<Database>(initDatabase())
    ..registerSingleton<Debounce>(Debounce())
    ..registerSingleton<TokenService>(
      TokenService(repository: GetIt.instance.get<Database>().loginSchemas),
    );
}

/// Server first entrypoint for every request
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // Check for database connection and reassign if needed
  final db = GetIt.instance.get<Database>();
  if (db.connection().isClosed) {
    GetIt.instance
      ..unregister<Database>()
      ..registerSingleton<Database>(initDatabase());
  }

  final address = InternetAddress('0.0.0.0');
  const port = 8080;

  return serve(handler, address, port, poweredByHeader: null);
}
