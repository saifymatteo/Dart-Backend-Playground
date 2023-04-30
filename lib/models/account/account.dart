// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:stormberry/stormberry.dart';

part 'account.schema.dart';

part 'account.g.dart';

@Model(
  tableName: 'account',
  indexes: [
    TableIndex(name: 'account.username', columns: ['username'], unique: true)
  ],
)
abstract class AccountSchema {
  @PrimaryKey()
  @AutoIncrement()
  int get id;

  String get username;

  String get password;

  DateTime get createdAt;
}

@JsonSerializable()
class AccountModel {
  const AccountModel({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory AccountModel.fromSchema(AccountSchemaView schema) => AccountModel(
        id: schema.id,
        username: schema.username,
        password: schema.password,
        createdAt: schema.createdAt,
      );

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  AccountSchemaInsertRequest toSchemaInsertRequest(AccountModel model) {
    if (username == null) {
      throw ArgumentError.value(username, 'username');
    }
    if (password == null) {
      throw ArgumentError.value(password, 'password');
    }

    return AccountSchemaInsertRequest(
      username: model.username!,
      password: model.password!,
      createdAt: DateTime.now(),
    );
  }

  AccountSchemaUpdateRequest toSchemaUpdateRequest(AccountModel model) {
    if (model.id == null) {
      throw ArgumentError.value(model.id, 'model.id');
    }

    return AccountSchemaUpdateRequest(
      id: model.id!,
      username: model.username,
      password: model.password,
      createdAt: model.createdAt,
    );
  }

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'username')
  final String? username;

  @JsonKey(name: 'password')
  final String? password;

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  AccountModel copyWith({
    int? id,
    String? username,
    String? password,
    DateTime? createdAt,
  }) {
    return AccountModel(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
