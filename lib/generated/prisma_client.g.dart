// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountWhereInput _$AccountWhereInputFromJson(Map<String, dynamic> json) =>
    AccountWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => AccountWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => AccountWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AccountWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : BigIntFilter.fromJson(json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonListRelationFilter.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountWhereInputToJson(AccountWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountOrderByWithRelationInput _$AccountOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AccountOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      person: json['person'] == null
          ? null
          : PersonOrderByRelationAggregateInput.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountOrderByWithRelationInputToJson(
    AccountOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('person', instance.person?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

AccountWhereUniqueInput _$AccountWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AccountWhereUniqueInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AccountWhereUniqueInputToJson(
    AccountWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('username', instance.username);
  return val;
}

AccountOrderByWithAggregationInput _$AccountOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    AccountOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : AccountCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AccountAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AccountMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AccountMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AccountSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountOrderByWithAggregationInputToJson(
    AccountOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AccountScalarWhereWithAggregatesInput
    _$AccountScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        AccountScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AccountScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AccountScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AccountScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['username'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AccountScalarWhereWithAggregatesInputToJson(
    AccountScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

PersonWhereInput _$PersonWhereInputFromJson(Map<String, dynamic> json) =>
    PersonWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => PersonWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => PersonWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => PersonWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : BigIntFilter.fromJson(json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFilter.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFilter.fromJson(json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFilter.fromJson(json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      accountId: json['account_id'] == null
          ? null
          : BigIntFilter.fromJson(json['account_id'] as Map<String, dynamic>),
      account: json['account'] == null
          ? null
          : AccountRelationFilter.fromJson(
              json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonWhereInputToJson(PersonWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  writeNotNull('account', instance.account?.toJson());
  return val;
}

PersonOrderByWithRelationInput _$PersonOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    PersonOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['first_name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['last_name']),
      gender: $enumDecodeNullable(_$SortOrderEnumMap, json['gender']),
      dateOfBirth:
          $enumDecodeNullable(_$SortOrderEnumMap, json['date_of_birth']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
      account: json['account'] == null
          ? null
          : AccountOrderByWithRelationInput.fromJson(
              json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonOrderByWithRelationInputToJson(
    PersonOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('first_name', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('last_name', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('gender', _$SortOrderEnumMap[instance.gender]);
  writeNotNull('date_of_birth', _$SortOrderEnumMap[instance.dateOfBirth]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  writeNotNull('account', instance.account?.toJson());
  return val;
}

PersonWhereUniqueInput _$PersonWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    PersonWhereUniqueInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$PersonWhereUniqueInputToJson(
    PersonWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('email', instance.email);
  return val;
}

PersonOrderByWithAggregationInput _$PersonOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    PersonOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['first_name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['last_name']),
      gender: $enumDecodeNullable(_$SortOrderEnumMap, json['gender']),
      dateOfBirth:
          $enumDecodeNullable(_$SortOrderEnumMap, json['date_of_birth']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
      $count: json['_count'] == null
          ? null
          : PersonCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : PersonAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : PersonMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : PersonMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : PersonSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonOrderByWithAggregationInputToJson(
    PersonOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('first_name', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('last_name', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('gender', _$SortOrderEnumMap[instance.gender]);
  writeNotNull('date_of_birth', _$SortOrderEnumMap[instance.dateOfBirth]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

PersonScalarWhereWithAggregatesInput
    _$PersonScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        PersonScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              PersonScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              PersonScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              PersonScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          firstName: json['first_name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['first_name'] as Map<String, dynamic>),
          lastName: json['last_name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['last_name'] as Map<String, dynamic>),
          gender: json['gender'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['gender'] as Map<String, dynamic>),
          dateOfBirth: json['date_of_birth'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['date_of_birth'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['email'] as Map<String, dynamic>),
          accountId: json['account_id'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['account_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonScalarWhereWithAggregatesInputToJson(
    PersonScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

AccountCreateInput _$AccountCreateInputFromJson(Map<String, dynamic> json) =>
    AccountCreateInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String,
      password: json['password'] as String,
      person: json['person'] == null
          ? null
          : PersonCreateNestedManyWithoutAccountInput.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountCreateInputToJson(AccountCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedCreateInput _$AccountUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    AccountUncheckedCreateInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String,
      password: json['password'] as String,
      person: json['person'] == null
          ? null
          : PersonUncheckedCreateNestedManyWithoutAccountInput.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUncheckedCreateInputToJson(
    AccountUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUpdateInput _$AccountUpdateInputFromJson(Map<String, dynamic> json) =>
    AccountUpdateInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonUpdateManyWithoutAccountNestedInput.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUpdateInputToJson(AccountUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedUpdateInput _$AccountUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AccountUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : PersonUncheckedUpdateManyWithoutAccountNestedInput.fromJson(
              json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUncheckedUpdateInputToJson(
    AccountUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountCreateManyInput _$AccountCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AccountCreateManyInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AccountCreateManyInputToJson(
    AccountCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  return val;
}

AccountUpdateManyMutationInput _$AccountUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    AccountUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUpdateManyMutationInputToJson(
    AccountUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

AccountUncheckedUpdateManyInput _$AccountUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    AccountUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUncheckedUpdateManyInputToJson(
    AccountUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

PersonCreateInput _$PersonCreateInputFromJson(Map<String, dynamic> json) =>
    PersonCreateInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
      account: AccountCreateNestedOneWithoutPersonInput.fromJson(
          json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonCreateInputToJson(PersonCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  val['account'] = instance.account.toJson();
  return val;
}

PersonUncheckedCreateInput _$PersonUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    PersonUncheckedCreateInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
      accountId: BigInt.parse(json['account_id'] as String),
    );

Map<String, dynamic> _$PersonUncheckedCreateInputToJson(
    PersonUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  val['account_id'] = instance.accountId.toString();
  return val;
}

PersonUpdateInput _$PersonUpdateInputFromJson(Map<String, dynamic> json) =>
    PersonUpdateInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      account: json['account'] == null
          ? null
          : AccountUpdateOneRequiredWithoutPersonNestedInput.fromJson(
              json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonUpdateInputToJson(PersonUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account', instance.account?.toJson());
  return val;
}

PersonUncheckedUpdateInput _$PersonUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    PersonUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      accountId: json['account_id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['account_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonUncheckedUpdateInputToJson(
    PersonUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

PersonCreateManyInput _$PersonCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    PersonCreateManyInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
      accountId: BigInt.parse(json['account_id'] as String),
    );

Map<String, dynamic> _$PersonCreateManyInputToJson(
    PersonCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  val['account_id'] = instance.accountId.toString();
  return val;
}

PersonUpdateManyMutationInput _$PersonUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    PersonUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonUpdateManyMutationInputToJson(
    PersonUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  return val;
}

PersonUncheckedUpdateManyInput _$PersonUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    PersonUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      accountId: json['account_id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['account_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonUncheckedUpdateManyInputToJson(
    PersonUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

BigIntFilter _$BigIntFilterFromJson(Map<String, dynamic> json) => BigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntFilterToJson(BigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

PersonListRelationFilter _$PersonListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    PersonListRelationFilter(
      every: json['every'] == null
          ? null
          : PersonWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : PersonWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : PersonWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonListRelationFilterToJson(
    PersonListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

PersonOrderByRelationAggregateInput
    _$PersonOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        PersonOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$PersonOrderByRelationAggregateInputToJson(
    PersonOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

AccountCountOrderByAggregateInput _$AccountCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AccountCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$AccountCountOrderByAggregateInputToJson(
    AccountCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

AccountAvgOrderByAggregateInput _$AccountAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AccountAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$AccountAvgOrderByAggregateInputToJson(
    AccountAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

AccountMaxOrderByAggregateInput _$AccountMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AccountMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$AccountMaxOrderByAggregateInputToJson(
    AccountMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

AccountMinOrderByAggregateInput _$AccountMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AccountMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$AccountMinOrderByAggregateInputToJson(
    AccountMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

AccountSumOrderByAggregateInput _$AccountSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AccountSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
    );

Map<String, dynamic> _$AccountSumOrderByAggregateInputToJson(
    AccountSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  return val;
}

BigIntWithAggregatesFilter _$BigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    BigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntWithAggregatesFilterToJson(
    BigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
    StringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

AccountRelationFilter _$AccountRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AccountRelationFilter(
      $is: json['is'] == null
          ? null
          : AccountWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AccountWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountRelationFilterToJson(
    AccountRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

PersonCountOrderByAggregateInput _$PersonCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    PersonCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['first_name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['last_name']),
      gender: $enumDecodeNullable(_$SortOrderEnumMap, json['gender']),
      dateOfBirth:
          $enumDecodeNullable(_$SortOrderEnumMap, json['date_of_birth']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
    );

Map<String, dynamic> _$PersonCountOrderByAggregateInputToJson(
    PersonCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('first_name', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('last_name', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('gender', _$SortOrderEnumMap[instance.gender]);
  writeNotNull('date_of_birth', _$SortOrderEnumMap[instance.dateOfBirth]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

PersonAvgOrderByAggregateInput _$PersonAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    PersonAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
    );

Map<String, dynamic> _$PersonAvgOrderByAggregateInputToJson(
    PersonAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

PersonMaxOrderByAggregateInput _$PersonMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    PersonMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['first_name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['last_name']),
      gender: $enumDecodeNullable(_$SortOrderEnumMap, json['gender']),
      dateOfBirth:
          $enumDecodeNullable(_$SortOrderEnumMap, json['date_of_birth']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
    );

Map<String, dynamic> _$PersonMaxOrderByAggregateInputToJson(
    PersonMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('first_name', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('last_name', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('gender', _$SortOrderEnumMap[instance.gender]);
  writeNotNull('date_of_birth', _$SortOrderEnumMap[instance.dateOfBirth]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

PersonMinOrderByAggregateInput _$PersonMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    PersonMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['first_name']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['last_name']),
      gender: $enumDecodeNullable(_$SortOrderEnumMap, json['gender']),
      dateOfBirth:
          $enumDecodeNullable(_$SortOrderEnumMap, json['date_of_birth']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
    );

Map<String, dynamic> _$PersonMinOrderByAggregateInputToJson(
    PersonMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('first_name', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('last_name', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('gender', _$SortOrderEnumMap[instance.gender]);
  writeNotNull('date_of_birth', _$SortOrderEnumMap[instance.dateOfBirth]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

PersonSumOrderByAggregateInput _$PersonSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    PersonSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      accountId: $enumDecodeNullable(_$SortOrderEnumMap, json['account_id']),
    );

Map<String, dynamic> _$PersonSumOrderByAggregateInputToJson(
    PersonSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeWithAggregatesFilterToJson(
    DateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
    StringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

PersonCreateNestedManyWithoutAccountInput
    _$PersonCreateNestedManyWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonCreateNestedManyWithoutAccountInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              PersonCreateWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => PersonCreateOrConnectWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : PersonCreateManyAccountInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$PersonCreateNestedManyWithoutAccountInputToJson(
    PersonCreateNestedManyWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

PersonUncheckedCreateNestedManyWithoutAccountInput
    _$PersonUncheckedCreateNestedManyWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUncheckedCreateNestedManyWithoutAccountInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              PersonCreateWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => PersonCreateOrConnectWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : PersonCreateManyAccountInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$PersonUncheckedCreateNestedManyWithoutAccountInputToJson(
    PersonUncheckedCreateNestedManyWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

BigIntFieldUpdateOperationsInput _$BigIntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    BigIntFieldUpdateOperationsInput(
      set: json['set'] == null ? null : BigInt.parse(json['set'] as String),
      increment: json['increment'] == null
          ? null
          : BigInt.parse(json['increment'] as String),
      decrement: json['decrement'] == null
          ? null
          : BigInt.parse(json['decrement'] as String),
      multiply: json['multiply'] == null
          ? null
          : BigInt.parse(json['multiply'] as String),
      divide: json['divide'] == null
          ? null
          : BigInt.parse(json['divide'] as String),
    );

Map<String, dynamic> _$BigIntFieldUpdateOperationsInputToJson(
    BigIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set?.toString());
  writeNotNull('increment', instance.increment?.toString());
  writeNotNull('decrement', instance.decrement?.toString());
  writeNotNull('multiply', instance.multiply?.toString());
  writeNotNull('divide', instance.divide?.toString());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

PersonUpdateManyWithoutAccountNestedInput
    _$PersonUpdateManyWithoutAccountNestedInputFromJson(
            Map<String, dynamic> json) =>
        PersonUpdateManyWithoutAccountNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              PersonCreateWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => PersonCreateOrConnectWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              PersonUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : PersonCreateManyAccountInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              PersonUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              PersonUpdateManyWithWhereWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              PersonScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$PersonUpdateManyWithoutAccountNestedInputToJson(
    PersonUpdateManyWithoutAccountNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

PersonUncheckedUpdateManyWithoutAccountNestedInput
    _$PersonUncheckedUpdateManyWithoutAccountNestedInputFromJson(
            Map<String, dynamic> json) =>
        PersonUncheckedUpdateManyWithoutAccountNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              PersonCreateWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => PersonCreateOrConnectWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              PersonUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : PersonCreateManyAccountInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              PersonWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              PersonUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              PersonUpdateManyWithWhereWithoutAccountInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              PersonScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$PersonUncheckedUpdateManyWithoutAccountNestedInputToJson(
    PersonUncheckedUpdateManyWithoutAccountNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AccountCreateNestedOneWithoutPersonInput
    _$AccountCreateNestedOneWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        AccountCreateNestedOneWithoutPersonInput(
          create: json['create'] == null
              ? null
              : AccountCreateWithoutPersonInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : AccountCreateOrConnectWithoutPersonInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : AccountWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AccountCreateNestedOneWithoutPersonInputToJson(
    AccountCreateNestedOneWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    DateTimeFieldUpdateOperationsInput(
      set: _$JsonConverterFromJson<String, DateTime>(
          json['set'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeFieldUpdateOperationsInputToJson(
    DateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
    NullableStringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

AccountUpdateOneRequiredWithoutPersonNestedInput
    _$AccountUpdateOneRequiredWithoutPersonNestedInputFromJson(
            Map<String, dynamic> json) =>
        AccountUpdateOneRequiredWithoutPersonNestedInput(
          create: json['create'] == null
              ? null
              : AccountCreateWithoutPersonInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : AccountCreateOrConnectWithoutPersonInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : AccountUpsertWithoutPersonInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : AccountWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : AccountUpdateWithoutPersonInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AccountUpdateOneRequiredWithoutPersonNestedInputToJson(
    AccountUpdateOneRequiredWithoutPersonNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedBigIntFilter _$NestedBigIntFilterFromJson(Map<String, dynamic> json) =>
    NestedBigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntFilterToJson(NestedBigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedBigIntWithAggregatesFilter _$NestedBigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedBigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntWithAggregatesFilterToJson(
    NestedBigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
    NestedDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
    NestedStringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeWithAggregatesFilterToJson(
    NestedDateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
    NestedStringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

PersonCreateWithoutAccountInput _$PersonCreateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    PersonCreateWithoutAccountInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$PersonCreateWithoutAccountInputToJson(
    PersonCreateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  return val;
}

PersonUncheckedCreateWithoutAccountInput
    _$PersonUncheckedCreateWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUncheckedCreateWithoutAccountInput(
          id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
          firstName: json['first_name'] as String,
          lastName: json['last_name'] as String,
          gender: json['gender'] as String,
          dateOfBirth: const DateTimeJsonConverter()
              .fromJson(json['date_of_birth'] as String),
          email: json['email'] as String?,
        );

Map<String, dynamic> _$PersonUncheckedCreateWithoutAccountInputToJson(
    PersonUncheckedCreateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  return val;
}

PersonCreateOrConnectWithoutAccountInput
    _$PersonCreateOrConnectWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonCreateOrConnectWithoutAccountInput(
          where: PersonWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: PersonCreateWithoutAccountInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonCreateOrConnectWithoutAccountInputToJson(
        PersonCreateOrConnectWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

PersonCreateManyAccountInputEnvelope
    _$PersonCreateManyAccountInputEnvelopeFromJson(Map<String, dynamic> json) =>
        PersonCreateManyAccountInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              PersonCreateManyAccountInput.fromJson(e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$PersonCreateManyAccountInputEnvelopeToJson(
    PersonCreateManyAccountInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

PersonUpsertWithWhereUniqueWithoutAccountInput
    _$PersonUpsertWithWhereUniqueWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUpsertWithWhereUniqueWithoutAccountInput(
          where: PersonWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: PersonUpdateWithoutAccountInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: PersonCreateWithoutAccountInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonUpsertWithWhereUniqueWithoutAccountInputToJson(
        PersonUpsertWithWhereUniqueWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

PersonUpdateWithWhereUniqueWithoutAccountInput
    _$PersonUpdateWithWhereUniqueWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUpdateWithWhereUniqueWithoutAccountInput(
          where: PersonWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: PersonUpdateWithoutAccountInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonUpdateWithWhereUniqueWithoutAccountInputToJson(
        PersonUpdateWithWhereUniqueWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

PersonUpdateManyWithWhereWithoutAccountInput
    _$PersonUpdateManyWithWhereWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUpdateManyWithWhereWithoutAccountInput(
          where: PersonScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: PersonUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonUpdateManyWithWhereWithoutAccountInputToJson(
        PersonUpdateManyWithWhereWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

PersonScalarWhereInput _$PersonScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    PersonScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => PersonScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => PersonScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => PersonScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : BigIntFilter.fromJson(json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFilter.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFilter.fromJson(json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFilter.fromJson(json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      accountId: json['account_id'] == null
          ? null
          : BigIntFilter.fromJson(json['account_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonScalarWhereInputToJson(
    PersonScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

AccountCreateWithoutPersonInput _$AccountCreateWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    AccountCreateWithoutPersonInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AccountCreateWithoutPersonInputToJson(
    AccountCreateWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  return val;
}

AccountUncheckedCreateWithoutPersonInput
    _$AccountUncheckedCreateWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        AccountUncheckedCreateWithoutPersonInput(
          id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
          username: json['username'] as String,
          password: json['password'] as String,
        );

Map<String, dynamic> _$AccountUncheckedCreateWithoutPersonInputToJson(
    AccountUncheckedCreateWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  return val;
}

AccountCreateOrConnectWithoutPersonInput
    _$AccountCreateOrConnectWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        AccountCreateOrConnectWithoutPersonInput(
          where: AccountWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: AccountCreateWithoutPersonInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AccountCreateOrConnectWithoutPersonInputToJson(
        AccountCreateOrConnectWithoutPersonInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpsertWithoutPersonInput _$AccountUpsertWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    AccountUpsertWithoutPersonInput(
      update: AccountUpdateWithoutPersonInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: AccountCreateWithoutPersonInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUpsertWithoutPersonInputToJson(
        AccountUpsertWithoutPersonInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpdateWithoutPersonInput _$AccountUpdateWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    AccountUpdateWithoutPersonInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountUpdateWithoutPersonInputToJson(
    AccountUpdateWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

AccountUncheckedUpdateWithoutPersonInput
    _$AccountUncheckedUpdateWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        AccountUncheckedUpdateWithoutPersonInput(
          id: json['id'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AccountUncheckedUpdateWithoutPersonInputToJson(
    AccountUncheckedUpdateWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

PersonCreateManyAccountInput _$PersonCreateManyAccountInputFromJson(
        Map<String, dynamic> json) =>
    PersonCreateManyAccountInput(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$PersonCreateManyAccountInputToJson(
    PersonCreateManyAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['first_name'] = instance.firstName;
  val['last_name'] = instance.lastName;
  val['gender'] = instance.gender;
  val['date_of_birth'] =
      const DateTimeJsonConverter().toJson(instance.dateOfBirth);
  writeNotNull('email', instance.email);
  return val;
}

PersonUpdateWithoutAccountInput _$PersonUpdateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    PersonUpdateWithoutAccountInput(
      id: json['id'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      firstName: json['first_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['last_name'] as Map<String, dynamic>),
      gender: json['gender'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['gender'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['date_of_birth'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonUpdateWithoutAccountInputToJson(
    PersonUpdateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  return val;
}

PersonUncheckedUpdateWithoutAccountInput
    _$PersonUncheckedUpdateWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        PersonUncheckedUpdateWithoutAccountInput(
          id: json['id'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          firstName: json['first_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['first_name'] as Map<String, dynamic>),
          lastName: json['last_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['last_name'] as Map<String, dynamic>),
          gender: json['gender'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['gender'] as Map<String, dynamic>),
          dateOfBirth: json['date_of_birth'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['date_of_birth'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonUncheckedUpdateWithoutAccountInputToJson(
    PersonUncheckedUpdateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  return val;
}

PersonUncheckedUpdateManyWithoutPersonInput
    _$PersonUncheckedUpdateManyWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        PersonUncheckedUpdateManyWithoutPersonInput(
          id: json['id'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          firstName: json['first_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['first_name'] as Map<String, dynamic>),
          lastName: json['last_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['last_name'] as Map<String, dynamic>),
          gender: json['gender'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['gender'] as Map<String, dynamic>),
          dateOfBirth: json['date_of_birth'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['date_of_birth'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PersonUncheckedUpdateManyWithoutPersonInputToJson(
    PersonUncheckedUpdateManyWithoutPersonInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('first_name', instance.firstName?.toJson());
  writeNotNull('last_name', instance.lastName?.toJson());
  writeNotNull('gender', instance.gender?.toJson());
  writeNotNull('date_of_birth', instance.dateOfBirth?.toJson());
  writeNotNull('email', instance.email?.toJson());
  return val;
}

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: BigInt.parse(json['id'] as String),
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id.toString(),
      'username': instance.username,
      'password': instance.password,
    };

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      id: BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      gender: json['gender'] as String,
      dateOfBirth: const DateTimeJsonConverter()
          .fromJson(json['date_of_birth'] as String),
      email: json['email'] as String?,
      accountId: BigInt.parse(json['account_id'] as String),
    );

Map<String, dynamic> _$PersonToJson(Person instance) {
  final val = <String, dynamic>{
    'id': instance.id.toString(),
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'gender': instance.gender,
    'date_of_birth': const DateTimeJsonConverter().toJson(instance.dateOfBirth),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['account_id'] = instance.accountId.toString();
  return val;
}

AccountGroupByOutputType _$AccountGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AccountGroupByOutputType(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      username: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AccountGroupByOutputTypeToJson(
    AccountGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  return val;
}

PersonGroupByOutputType _$PersonGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    PersonGroupByOutputType(
      id: json['id'] == null ? null : BigInt.parse(json['id'] as String),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: _$JsonConverterFromJson<String, DateTime>(
          json['date_of_birth'], const DateTimeJsonConverter().fromJson),
      email: json['email'] as String?,
      accountId: json['account_id'] == null
          ? null
          : BigInt.parse(json['account_id'] as String),
    );

Map<String, dynamic> _$PersonGroupByOutputTypeToJson(
    PersonGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('gender', instance.gender);
  writeNotNull(
      'date_of_birth',
      _$JsonConverterToJson<String, DateTime>(
          instance.dateOfBirth, const DateTimeJsonConverter().toJson));
  writeNotNull('email', instance.email);
  writeNotNull('account_id', instance.accountId?.toString());
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
