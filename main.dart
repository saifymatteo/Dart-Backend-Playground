import 'dart:async';
import 'dart:io';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/states/states.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:stormberry/stormberry.dart';

/// Global service accessor
final getIt = GetIt.instance;

/// Object to refer when using [Database].
/// Need to reassign in case of disconnection
late Database postgres;

/// Constant [Database] object
Database initDatabase() => Database(
      debugPrint: true,
      host: Env.databaseHost,
      port: int.parse(Env.databasePort),
      database: Env.databaseName,
      user: Env.databaseUsername,
      password: Env.databasePassword,
    );

/// Server initialization
Future<void> init(InternetAddress ip, int port) async {
  postgres = initDatabase();
  await postgres.open();

  // Logger registration
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) async {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  // Provider registration
  getIt
    ..registerSingleton<Debounce>(Debounce())
    ..registerSingleton<UserToken>(UserToken());
}

/// Server first entrypoint for every request
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // Check for database connection and reassign if needed
  if (postgres.connection().isClosed) {
    postgres = initDatabase();
    await postgres.open();
  }

  final address = InternetAddress('0.0.0.0');
  const port = 80;

  return serve(handler, address, port, poweredByHeader: null);
}
