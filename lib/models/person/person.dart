// ignore_for_file: public_member_api_docs

import 'package:backend_playground/models/account/account.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stormberry/stormberry.dart';

part 'person.schema.dart';

part 'person.g.dart';

@Model(
  tableName: 'person',
  indexes: [
    TableIndex(name: 'person.email', columns: ['email'], unique: true)
  ],
)
abstract class PersonSchema {
  @PrimaryKey()
  @AutoIncrement()
  int get id;

  String get firstName;

  String get lastName;

  String get gender;

  DateTime get dateOfBirth;

  String? get email;

  AccountSchema get account;
}

@JsonSerializable()
class PersonModel {
  const PersonModel({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.email,
    this.account,
  });

  factory PersonModel.fromSchema(PersonSchemaView schema) => PersonModel(
        id: schema.id,
        firstName: schema.firstName,
        lastName: schema.lastName,
        gender: schema.gender,
        dateOfBirth: schema.dateOfBirth,
        email: schema.email,
        account: AccountModel(
          id: schema.account.id,
          username: schema.account.username,
          password: schema.account.password,
        ),
      );

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  PersonSchemaInsertRequest toSchemaInsertRequest(PersonModel model) =>
      PersonSchemaInsertRequest(
        firstName: model.firstName!,
        lastName: model.lastName!,
        gender: model.gender!,
        dateOfBirth: model.dateOfBirth!,
        email: model.email,
        accountId: model.account!.id!,
      );

  PersonSchemaUpdateRequest toSchemaUpdateRequest(PersonModel model) =>
      PersonSchemaUpdateRequest(
        id: model.id!,
        firstName: model.firstName,
        lastName: model.lastName,
        gender: model.gender,
        dateOfBirth: model.dateOfBirth,
        email: model.email,
        accountId: model.account?.id,
      );

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'gender')
  final String? gender;

  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'account')
  final AccountModel? account;

  PersonModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? gender,
    DateTime? dateOfBirth,
    String? email,
    AccountModel? account,
  }) {
    return PersonModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      email: email ?? this.email,
      account: account ?? this.account,
    );
  }
}
