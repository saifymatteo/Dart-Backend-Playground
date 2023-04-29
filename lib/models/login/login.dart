// ignore_for_file: public_member_api_docs

import 'package:backend_playground/models/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stormberry/stormberry.dart';

part 'login.schema.dart';

part 'login.g.dart';

@Model(
  tableName: 'login',
  indexes: [
    TableIndex(name: 'login.token', columns: ['token'], unique: true)
  ],
)
abstract class LoginSchema {
  @PrimaryKey()
  @AutoIncrement()
  int get id;

  String get token;

  AccountSchema get account;
}

@JsonSerializable()
class LoginModel {
  const LoginModel({
    this.id,
    this.token,
    this.account,
  });

  factory LoginModel.fromSchema(LoginSchemaView schema) => LoginModel(
        id: schema.id,
        token: schema.token,
        account: AccountModel(
          id: schema.account.id,
          username: schema.account.username,
          password: schema.account.password,
        ),
      );

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  LoginSchemaInsertRequest toSchemaInsertRequest(LoginModel model) {
    if (token == null) {
      throw ArgumentError.value(token, 'token');
    }
    if (account == null) {
      throw ArgumentError.value(account, 'account');
    }
    if (account!.id == null) {
      throw ArgumentError.value(account!.id, 'account.id');
    }

    return LoginSchemaInsertRequest(
      token: model.token!,
      accountId: model.account!.id!,
    );
  }

  LoginSchemaUpdateRequest toSchemaUpdateRequest(LoginModel model) {
    if (model.id == null) {
      throw ArgumentError.value(model.id, 'model.id');
    }
    if (model.account == null) {
      throw ArgumentError.value(model.account, 'model.account');
    }

    return LoginSchemaUpdateRequest(
      id: model.id!,
      token: model.token,
      accountId: model.account!.id,
    );
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'token')
  final String? token;

  @JsonKey(name: 'account')
  final AccountModel? account;

  LoginModel copyWith({
    int? id,
    String? token,
    AccountModel? account,
  }) {
    return LoginModel(
      id: id ?? this.id,
      token: token ?? this.token,
      account: account ?? this.account,
    );
  }
}
