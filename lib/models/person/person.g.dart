// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PersonModel',
      json,
      ($checkedConvert) {
        final val = PersonModel(
          id: $checkedConvert('id', (v) => v as int?),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => v == null ? null : DateTime.parse(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
    );

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'email': instance.email,
      'account': instance.account,
    };
