// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LoginModel',
      json,
      ($checkedConvert) {
        final val = LoginModel(
          id: $checkedConvert('id', (v) => v as int?),
          token: $checkedConvert('token', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'createdAt': instance.createdAt?.toIso8601String(),
      'account': instance.account,
    };
