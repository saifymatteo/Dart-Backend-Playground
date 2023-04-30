import 'dart:async';
import 'dart:io';

import 'package:backend_playground/services/services.dart';
import 'package:dart_frog/dart_frog.dart';

import 'main.shared.dart';

/// Server initialization
Future<void> init(InternetAddress ip, int port) async {
  initialiseDependency(database: ProdDatabaseService());
}

/// Server first entrypoint for every request
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final address = InternetAddress('0.0.0.0');
  const port = 8080;

  return serve(handler, address, port, poweredByHeader: null);
}
