import 'dart:async';
import 'dart:io';

import 'package:backend_playground/components/components.dart';
import 'package:backend_playground/env/env.dart';
import 'package:backend_playground/generated/prisma_client.dart';
import 'package:backend_playground/services/services.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart' as logger;
import 'package:orm/logger.dart';

final prisma = PrismaClient(
  stdout: Event.values,
  event: Event.values,
  datasources: Datasources(db: Env.databaseUrl),
);

final getIt = GetIt.instance;

Future<void> init(InternetAddress ip, int port) async {
  // Logger registration
  logger.Logger.root.level = logger.Level.ALL;
  logger.Logger.root.onRecord.listen((event) async {
    // ignore: avoid_print
    print('${event.time}: ${event.level.name}: ${event.message}');
  });

  getIt
    ..registerSingleton<Debounce>(Debounce())
    ..registerSingleton<TokenService>(TokenService());
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final address = InternetAddress('0.0.0.0');
  const port = 8080;

  return serve(handler, address, port, poweredByHeader: null);
}
