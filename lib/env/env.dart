// ignore_for_file: public_member_api_docs

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'DB_HOST_ADDRESS')
  static final dbHostAddress = _Env.dbHostAddress;

  @EnviedField(varName: 'DB_PORT')
  static final dbPort = _Env.dbPort;

  @EnviedField(varName: 'DB_NAME')
  static final dbName = _Env.dbName;

  @EnviedField(varName: 'DB_USERNAME')
  static final dbUsername = _Env.dbUsername;

  @EnviedField(varName: 'DB_PASSWORD')
  static final dbPassword = _Env.dbPassword;
}
