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
}

@JsonSerializable()
class AccountModel {
  const AccountModel({
    this.id,
    this.username,
    this.password,
  });

  factory AccountModel.fromSchema(AccountSchemaView schema) => AccountModel(
        id: schema.id,
        username: schema.username,
        password: schema.password,
      );

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);

  AccountSchemaInsertRequest toSchemaInsertRequest(AccountModel model) =>
      AccountSchemaInsertRequest(
        username: model.username!,
        password: model.password!,
      );

  AccountSchemaUpdateRequest toSchemaUpdateRequest(AccountModel model) =>
      AccountSchemaUpdateRequest(
        id: model.id!,
        username: model.username,
        password: model.password,
      );

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'username')
  final String? username;

  @JsonKey(name: 'password')
  final String? password;

  AccountModel copyWith({
    int? id,
    String? username,
    String? password,
  }) {
    return AccountModel(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
