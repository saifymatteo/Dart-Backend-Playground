// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountWhereInput _$AccountWhereInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountWhereInput',
      json,
      ($checkedConvert) {
        final val = AccountWhereInput(
          AND: $checkedConvert(
              'AND',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  AccountWhereInput.fromJson(e as Map<String, dynamic>))),
          OR: $checkedConvert(
              'OR',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  AccountWhereInput.fromJson(e as Map<String, dynamic>))),
          NOT: $checkedConvert(
              'NOT',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  AccountWhereInput.fromJson(e as Map<String, dynamic>))),
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginListRelationFilter.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonListRelationFilter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountOrderByWithRelationInput _$AccountOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountOrderByWithRelationInput',
      json,
      ($checkedConvert) {
        final val = AccountOrderByWithRelationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          username: $checkedConvert(
              'username', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          password: $checkedConvert(
              'password', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginOrderByRelationAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonOrderByRelationAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

AccountWhereUniqueInput _$AccountWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountWhereUniqueInput',
      json,
      ($checkedConvert) {
        final val = AccountWhereUniqueInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String?),
        );
        return val;
      },
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
    $checkedCreate(
      'AccountOrderByWithAggregationInput',
      json,
      ($checkedConvert) {
        final val = AccountOrderByWithAggregationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          username: $checkedConvert(
              'username', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          password: $checkedConvert(
              'password', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : AccountCountOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $avg: $checkedConvert(
              '_avg',
              (v) => v == null
                  ? null
                  : AccountAvgOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : AccountMaxOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : AccountMinOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $sum: $checkedConvert(
              '_sum',
              (v) => v == null
                  ? null
                  : AccountSumOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        r'$count': '_count',
        r'$avg': '_avg',
        r'$max': '_max',
        r'$min': '_min',
        r'$sum': '_sum'
      },
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
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
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
        $checkedCreate(
          'AccountScalarWhereWithAggregatesInput',
          json,
          ($checkedConvert) {
            final val = AccountScalarWhereWithAggregatesInput(
              AND: $checkedConvert(
                  'AND',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      AccountScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              OR: $checkedConvert(
                  'OR',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      AccountScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              NOT: $checkedConvert(
                  'NOT',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      AccountScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              username: $checkedConvert(
                  'username',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              password: $checkedConvert(
                  'password',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  return val;
}

LoginWhereInput _$LoginWhereInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginWhereInput',
      json,
      ($checkedConvert) {
        final val = LoginWhereInput(
          AND: $checkedConvert(
              'AND',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => LoginWhereInput.fromJson(e as Map<String, dynamic>))),
          OR: $checkedConvert(
              'OR',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => LoginWhereInput.fromJson(e as Map<String, dynamic>))),
          NOT: $checkedConvert(
              'NOT',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => LoginWhereInput.fromJson(e as Map<String, dynamic>))),
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountRelationFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginWhereInputToJson(LoginWhereInput instance) {
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
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  writeNotNull('account', instance.account?.toJson());
  return val;
}

LoginOrderByWithRelationInput _$LoginOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginOrderByWithRelationInput',
      json,
      ($checkedConvert) {
        final val = LoginOrderByWithRelationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          token: $checkedConvert(
              'token', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          expiresAt: $checkedConvert(
              'expires_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountOrderByWithRelationInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginOrderByWithRelationInputToJson(
    LoginOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('token', _$SortOrderEnumMap[instance.token]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('expires_at', _$SortOrderEnumMap[instance.expiresAt]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  writeNotNull('account', instance.account?.toJson());
  return val;
}

LoginWhereUniqueInput _$LoginWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginWhereUniqueInput',
      json,
      ($checkedConvert) {
        final val = LoginWhereUniqueInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginWhereUniqueInputToJson(
    LoginWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('token', instance.token);
  return val;
}

LoginOrderByWithAggregationInput _$LoginOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginOrderByWithAggregationInput',
      json,
      ($checkedConvert) {
        final val = LoginOrderByWithAggregationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          token: $checkedConvert(
              'token', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          expiresAt: $checkedConvert(
              'expires_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : LoginCountOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $avg: $checkedConvert(
              '_avg',
              (v) => v == null
                  ? null
                  : LoginAvgOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : LoginMaxOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : LoginMinOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $sum: $checkedConvert(
              '_sum',
              (v) => v == null
                  ? null
                  : LoginSumOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id',
        r'$count': '_count',
        r'$avg': '_avg',
        r'$max': '_max',
        r'$min': '_min',
        r'$sum': '_sum'
      },
    );

Map<String, dynamic> _$LoginOrderByWithAggregationInputToJson(
    LoginOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('token', _$SortOrderEnumMap[instance.token]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('expires_at', _$SortOrderEnumMap[instance.expiresAt]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

LoginScalarWhereWithAggregatesInput
    _$LoginScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginScalarWhereWithAggregatesInput',
          json,
          ($checkedConvert) {
            final val = LoginScalarWhereWithAggregatesInput(
              AND: $checkedConvert(
                  'AND',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              OR: $checkedConvert(
                  'OR',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              NOT: $checkedConvert(
                  'NOT',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              token: $checkedConvert(
                  'token',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              expiresAt: $checkedConvert(
                  'expires_at',
                  (v) => v == null
                      ? null
                      : DateTimeWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              accountId: $checkedConvert(
                  'account_id',
                  (v) => v == null
                      ? null
                      : BigIntWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'createdAt': 'created_at',
            'expiresAt': 'expires_at',
            'accountId': 'account_id'
          },
        );

Map<String, dynamic> _$LoginScalarWhereWithAggregatesInputToJson(
    LoginScalarWhereWithAggregatesInput instance) {
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
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

PersonWhereInput _$PersonWhereInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonWhereInput',
      json,
      ($checkedConvert) {
        final val = PersonWhereInput(
          AND: $checkedConvert(
              'AND',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => PersonWhereInput.fromJson(e as Map<String, dynamic>))),
          OR: $checkedConvert(
              'OR',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => PersonWhereInput.fromJson(e as Map<String, dynamic>))),
          NOT: $checkedConvert(
              'NOT',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => PersonWhereInput.fromJson(e as Map<String, dynamic>))),
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : StringNullableFilter.fromJson(v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountRelationFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonOrderByWithRelationInput',
      json,
      ($checkedConvert) {
        final val = PersonOrderByWithRelationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          firstName: $checkedConvert(
              'first_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          lastName: $checkedConvert(
              'last_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          email: $checkedConvert(
              'email', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountOrderByWithRelationInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonWhereUniqueInput',
      json,
      ($checkedConvert) {
        final val = PersonWhereUniqueInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
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
    $checkedCreate(
      'PersonOrderByWithAggregationInput',
      json,
      ($checkedConvert) {
        final val = PersonOrderByWithAggregationInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          firstName: $checkedConvert(
              'first_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          lastName: $checkedConvert(
              'last_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          email: $checkedConvert(
              'email', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : PersonCountOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $avg: $checkedConvert(
              '_avg',
              (v) => v == null
                  ? null
                  : PersonAvgOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : PersonMaxOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : PersonMinOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
          $sum: $checkedConvert(
              '_sum',
              (v) => v == null
                  ? null
                  : PersonSumOrderByAggregateInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id',
        r'$count': '_count',
        r'$avg': '_avg',
        r'$max': '_max',
        r'$min': '_min',
        r'$sum': '_sum'
      },
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
        $checkedCreate(
          'PersonScalarWhereWithAggregatesInput',
          json,
          ($checkedConvert) {
            final val = PersonScalarWhereWithAggregatesInput(
              AND: $checkedConvert(
                  'AND',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              OR: $checkedConvert(
                  'OR',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              NOT: $checkedConvert(
                  'NOT',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonScalarWhereWithAggregatesInput.fromJson(
                          e as Map<String, dynamic>))),
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              firstName: $checkedConvert(
                  'first_name',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              lastName: $checkedConvert(
                  'last_name',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              gender: $checkedConvert(
                  'gender',
                  (v) => v == null
                      ? null
                      : StringWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              dateOfBirth: $checkedConvert(
                  'date_of_birth',
                  (v) => v == null
                      ? null
                      : DateTimeWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              email: $checkedConvert(
                  'email',
                  (v) => v == null
                      ? null
                      : StringNullableWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              accountId: $checkedConvert(
                  'account_id',
                  (v) => v == null
                      ? null
                      : BigIntWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'firstName': 'first_name',
            'lastName': 'last_name',
            'dateOfBirth': 'date_of_birth',
            'accountId': 'account_id'
          },
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
    $checkedCreate(
      'AccountCreateInput',
      json,
      ($checkedConvert) {
        final val = AccountCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedCreateInput _$AccountUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUncheckedCreateInput',
      json,
      ($checkedConvert) {
        final val = AccountUncheckedCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginUncheckedCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonUncheckedCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUpdateInput _$AccountUpdateInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpdateInput',
      json,
      ($checkedConvert) {
        final val = AccountUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedUpdateInput _$AccountUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUncheckedUpdateInput',
      json,
      ($checkedConvert) {
        final val = AccountUncheckedUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginUncheckedUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonUncheckedUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('login', instance.login?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountCreateManyInput _$AccountCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountCreateManyInput',
      json,
      ($checkedConvert) {
        final val = AccountCreateManyInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  return val;
}

AccountUpdateManyMutationInput _$AccountUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpdateManyMutationInput',
      json,
      ($checkedConvert) {
        final val = AccountUpdateManyMutationInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  return val;
}

AccountUncheckedUpdateManyInput _$AccountUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUncheckedUpdateManyInput',
      json,
      ($checkedConvert) {
        final val = AccountUncheckedUpdateManyInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  return val;
}

LoginCreateInput _$LoginCreateInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCreateInput',
      json,
      ($checkedConvert) {
        final val = LoginCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          account: $checkedConvert(
              'account',
              (v) => AccountCreateNestedOneWithoutLoginInput.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginCreateInputToJson(LoginCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  val['account'] = instance.account.toJson();
  return val;
}

LoginUncheckedCreateInput _$LoginUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUncheckedCreateInput',
      json,
      ($checkedConvert) {
        final val = LoginUncheckedCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginUncheckedCreateInputToJson(
    LoginUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  val['account_id'] = instance.accountId.toString();
  return val;
}

LoginUpdateInput _$LoginUpdateInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUpdateInput',
      json,
      ($checkedConvert) {
        final val = LoginUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountUpdateOneRequiredWithoutLoginNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginUpdateInputToJson(LoginUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account', instance.account?.toJson());
  return val;
}

LoginUncheckedUpdateInput _$LoginUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUncheckedUpdateInput',
      json,
      ($checkedConvert) {
        final val = LoginUncheckedUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginUncheckedUpdateInputToJson(
    LoginUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

LoginCreateManyInput _$LoginCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCreateManyInput',
      json,
      ($checkedConvert) {
        final val = LoginCreateManyInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginCreateManyInputToJson(
    LoginCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  val['account_id'] = instance.accountId.toString();
  return val;
}

LoginUpdateManyMutationInput _$LoginUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUpdateManyMutationInput',
      json,
      ($checkedConvert) {
        final val = LoginUpdateManyMutationInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginUpdateManyMutationInputToJson(
    LoginUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  return val;
}

LoginUncheckedUpdateManyInput _$LoginUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUncheckedUpdateManyInput',
      json,
      ($checkedConvert) {
        final val = LoginUncheckedUpdateManyInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginUncheckedUpdateManyInputToJson(
    LoginUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

PersonCreateInput _$PersonCreateInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonCreateInput',
      json,
      ($checkedConvert) {
        final val = PersonCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          account: $checkedConvert(
              'account',
              (v) => AccountCreateNestedOneWithoutPersonInput.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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
    $checkedCreate(
      'PersonUncheckedCreateInput',
      json,
      ($checkedConvert) {
        final val = PersonUncheckedCreateInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonUpdateInput',
      json,
      ($checkedConvert) {
        final val = PersonUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : NullableStringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          account: $checkedConvert(
              'account',
              (v) => v == null
                  ? null
                  : AccountUpdateOneRequiredWithoutPersonNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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
    $checkedCreate(
      'PersonUncheckedUpdateInput',
      json,
      ($checkedConvert) {
        final val = PersonUncheckedUpdateInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : NullableStringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonCreateManyInput',
      json,
      ($checkedConvert) {
        final val = PersonCreateManyInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonUpdateManyMutationInput',
      json,
      ($checkedConvert) {
        final val = PersonUpdateManyMutationInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : NullableStringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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
    $checkedCreate(
      'PersonUncheckedUpdateManyInput',
      json,
      ($checkedConvert) {
        final val = PersonUncheckedUpdateManyInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : NullableStringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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

BigIntFilter _$BigIntFilterFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BigIntFilter',
      json,
      ($checkedConvert) {
        final val = BigIntFilter(
          equals: $checkedConvert(
              'equals', (v) => v == null ? null : BigInt.parse(v as String)),
          $in: $checkedConvert(
              'in',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          lt: $checkedConvert(
              'lt', (v) => v == null ? null : BigInt.parse(v as String)),
          lte: $checkedConvert(
              'lte', (v) => v == null ? null : BigInt.parse(v as String)),
          gt: $checkedConvert(
              'gt', (v) => v == null ? null : BigInt.parse(v as String)),
          gte: $checkedConvert(
              'gte', (v) => v == null ? null : BigInt.parse(v as String)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StringFilter',
      json,
      ($checkedConvert) {
        final val = StringFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          mode: $checkedConvert(
              'mode', (v) => $enumDecodeNullable(_$QueryModeEnumMap, v)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DateTimeFilter',
      json,
      ($checkedConvert) {
        final val = DateTimeFilter(
          equals: $checkedConvert(
              'equals',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          $in: $checkedConvert(
              'in',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          lt: $checkedConvert(
              'lt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          lte: $checkedConvert(
              'lte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gt: $checkedConvert(
              'gt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gte: $checkedConvert(
              'gte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

LoginListRelationFilter _$LoginListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginListRelationFilter',
      json,
      ($checkedConvert) {
        final val = LoginListRelationFilter(
          every: $checkedConvert(
              'every',
              (v) => v == null
                  ? null
                  : LoginWhereInput.fromJson(v as Map<String, dynamic>)),
          some: $checkedConvert(
              'some',
              (v) => v == null
                  ? null
                  : LoginWhereInput.fromJson(v as Map<String, dynamic>)),
          none: $checkedConvert(
              'none',
              (v) => v == null
                  ? null
                  : LoginWhereInput.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginListRelationFilterToJson(
    LoginListRelationFilter instance) {
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

PersonListRelationFilter _$PersonListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonListRelationFilter',
      json,
      ($checkedConvert) {
        final val = PersonListRelationFilter(
          every: $checkedConvert(
              'every',
              (v) => v == null
                  ? null
                  : PersonWhereInput.fromJson(v as Map<String, dynamic>)),
          some: $checkedConvert(
              'some',
              (v) => v == null
                  ? null
                  : PersonWhereInput.fromJson(v as Map<String, dynamic>)),
          none: $checkedConvert(
              'none',
              (v) => v == null
                  ? null
                  : PersonWhereInput.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
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

LoginOrderByRelationAggregateInput _$LoginOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginOrderByRelationAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginOrderByRelationAggregateInput(
          $count: $checkedConvert(
              '_count', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {r'$count': '_count'},
    );

Map<String, dynamic> _$LoginOrderByRelationAggregateInputToJson(
    LoginOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

PersonOrderByRelationAggregateInput
    _$PersonOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'PersonOrderByRelationAggregateInput',
          json,
          ($checkedConvert) {
            final val = PersonOrderByRelationAggregateInput(
              $count: $checkedConvert(
                  '_count', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
            );
            return val;
          },
          fieldKeyMap: const {r'$count': '_count'},
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
    $checkedCreate(
      'AccountCountOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = AccountCountOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          username: $checkedConvert(
              'username', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          password: $checkedConvert(
              'password', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  return val;
}

AccountAvgOrderByAggregateInput _$AccountAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountAvgOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = AccountAvgOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
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
    $checkedCreate(
      'AccountMaxOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = AccountMaxOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          username: $checkedConvert(
              'username', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          password: $checkedConvert(
              'password', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  return val;
}

AccountMinOrderByAggregateInput _$AccountMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountMinOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = AccountMinOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          username: $checkedConvert(
              'username', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          password: $checkedConvert(
              'password', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  return val;
}

AccountSumOrderByAggregateInput _$AccountSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountSumOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = AccountSumOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
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
    $checkedCreate(
      'BigIntWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = BigIntWithAggregatesFilter(
          equals: $checkedConvert(
              'equals', (v) => v == null ? null : BigInt.parse(v as String)),
          $in: $checkedConvert(
              'in',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          lt: $checkedConvert(
              'lt', (v) => v == null ? null : BigInt.parse(v as String)),
          lte: $checkedConvert(
              'lte', (v) => v == null ? null : BigInt.parse(v as String)),
          gt: $checkedConvert(
              'gt', (v) => v == null ? null : BigInt.parse(v as String)),
          gte: $checkedConvert(
              'gte', (v) => v == null ? null : BigInt.parse(v as String)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedBigIntWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $avg: $checkedConvert(
              '_avg',
              (v) => v == null
                  ? null
                  : NestedFloatFilter.fromJson(v as Map<String, dynamic>)),
          $sum: $checkedConvert(
              '_sum',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$avg': '_avg',
        r'$sum': '_sum',
        r'$min': '_min',
        r'$max': '_max'
      },
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
    $checkedCreate(
      'StringWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = StringWithAggregatesFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          mode: $checkedConvert(
              'mode', (v) => $enumDecodeNullable(_$QueryModeEnumMap, v)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$min': '_min',
        r'$max': '_max'
      },
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

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'DateTimeWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = DateTimeWithAggregatesFilter(
          equals: $checkedConvert(
              'equals',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          $in: $checkedConvert(
              'in',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          lt: $checkedConvert(
              'lt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          lte: $checkedConvert(
              'lte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gt: $checkedConvert(
              'gt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gte: $checkedConvert(
              'gte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedDateTimeWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$min': '_min',
        r'$max': '_max'
      },
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

AccountRelationFilter _$AccountRelationFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountRelationFilter',
      json,
      ($checkedConvert) {
        final val = AccountRelationFilter(
          $is: $checkedConvert(
              'is',
              (v) => v == null
                  ? null
                  : AccountWhereInput.fromJson(v as Map<String, dynamic>)),
          isNot: $checkedConvert(
              'isNot',
              (v) => v == null
                  ? null
                  : AccountWhereInput.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$is': 'is'},
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

LoginCountOrderByAggregateInput _$LoginCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCountOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginCountOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          token: $checkedConvert(
              'token', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          expiresAt: $checkedConvert(
              'expires_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginCountOrderByAggregateInputToJson(
    LoginCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('token', _$SortOrderEnumMap[instance.token]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('expires_at', _$SortOrderEnumMap[instance.expiresAt]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

LoginAvgOrderByAggregateInput _$LoginAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginAvgOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginAvgOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'accountId': 'account_id'},
    );

Map<String, dynamic> _$LoginAvgOrderByAggregateInputToJson(
    LoginAvgOrderByAggregateInput instance) {
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

LoginMaxOrderByAggregateInput _$LoginMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginMaxOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginMaxOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          token: $checkedConvert(
              'token', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          expiresAt: $checkedConvert(
              'expires_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginMaxOrderByAggregateInputToJson(
    LoginMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('token', _$SortOrderEnumMap[instance.token]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('expires_at', _$SortOrderEnumMap[instance.expiresAt]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

LoginMinOrderByAggregateInput _$LoginMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginMinOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginMinOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          token: $checkedConvert(
              'token', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          createdAt: $checkedConvert(
              'created_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          expiresAt: $checkedConvert(
              'expires_at', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginMinOrderByAggregateInputToJson(
    LoginMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('token', _$SortOrderEnumMap[instance.token]);
  writeNotNull('created_at', _$SortOrderEnumMap[instance.createdAt]);
  writeNotNull('expires_at', _$SortOrderEnumMap[instance.expiresAt]);
  writeNotNull('account_id', _$SortOrderEnumMap[instance.accountId]);
  return val;
}

LoginSumOrderByAggregateInput _$LoginSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginSumOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = LoginSumOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'accountId': 'account_id'},
    );

Map<String, dynamic> _$LoginSumOrderByAggregateInputToJson(
    LoginSumOrderByAggregateInput instance) {
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

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'StringNullableFilter',
      json,
      ($checkedConvert) {
        final val = StringNullableFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          mode: $checkedConvert(
              'mode', (v) => $enumDecodeNullable(_$QueryModeEnumMap, v)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

PersonCountOrderByAggregateInput _$PersonCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonCountOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = PersonCountOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          firstName: $checkedConvert(
              'first_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          lastName: $checkedConvert(
              'last_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          email: $checkedConvert(
              'email', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonAvgOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = PersonAvgOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'accountId': 'account_id'},
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
    $checkedCreate(
      'PersonMaxOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = PersonMaxOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          firstName: $checkedConvert(
              'first_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          lastName: $checkedConvert(
              'last_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          email: $checkedConvert(
              'email', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonMinOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = PersonMinOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          firstName: $checkedConvert(
              'first_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          lastName: $checkedConvert(
              'last_name', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          email: $checkedConvert(
              'email', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'PersonSumOrderByAggregateInput',
      json,
      ($checkedConvert) {
        final val = PersonSumOrderByAggregateInput(
          id: $checkedConvert(
              'id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
          accountId: $checkedConvert(
              'account_id', (v) => $enumDecodeNullable(_$SortOrderEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'accountId': 'account_id'},
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

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'StringNullableWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = StringNullableWithAggregatesFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          mode: $checkedConvert(
              'mode', (v) => $enumDecodeNullable(_$QueryModeEnumMap, v)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringNullableWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedStringNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedStringNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$min': '_min',
        r'$max': '_max'
      },
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

LoginCreateNestedManyWithoutAccountInput
    _$LoginCreateNestedManyWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginCreateNestedManyWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginCreateNestedManyWithoutAccountInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : LoginCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginCreateNestedManyWithoutAccountInputToJson(
    LoginCreateNestedManyWithoutAccountInput instance) {
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

PersonCreateNestedManyWithoutAccountInput
    _$PersonCreateNestedManyWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PersonCreateNestedManyWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonCreateNestedManyWithoutAccountInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : PersonCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
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

LoginUncheckedCreateNestedManyWithoutAccountInput
    _$LoginUncheckedCreateNestedManyWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUncheckedCreateNestedManyWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUncheckedCreateNestedManyWithoutAccountInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : LoginCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUncheckedCreateNestedManyWithoutAccountInputToJson(
    LoginUncheckedCreateNestedManyWithoutAccountInput instance) {
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
        $checkedCreate(
          'PersonUncheckedCreateNestedManyWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUncheckedCreateNestedManyWithoutAccountInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : PersonCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
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
    $checkedCreate(
      'BigIntFieldUpdateOperationsInput',
      json,
      ($checkedConvert) {
        final val = BigIntFieldUpdateOperationsInput(
          set: $checkedConvert(
              'set', (v) => v == null ? null : BigInt.parse(v as String)),
          increment: $checkedConvert(
              'increment', (v) => v == null ? null : BigInt.parse(v as String)),
          decrement: $checkedConvert(
              'decrement', (v) => v == null ? null : BigInt.parse(v as String)),
          multiply: $checkedConvert(
              'multiply', (v) => v == null ? null : BigInt.parse(v as String)),
          divide: $checkedConvert(
              'divide', (v) => v == null ? null : BigInt.parse(v as String)),
        );
        return val;
      },
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
    $checkedCreate(
      'StringFieldUpdateOperationsInput',
      json,
      ($checkedConvert) {
        final val = StringFieldUpdateOperationsInput(
          set: $checkedConvert('set', (v) => v as String?),
        );
        return val;
      },
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

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'DateTimeFieldUpdateOperationsInput',
      json,
      ($checkedConvert) {
        final val = DateTimeFieldUpdateOperationsInput(
          set: $checkedConvert(
              'set',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
        );
        return val;
      },
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

LoginUpdateManyWithoutAccountNestedInput
    _$LoginUpdateManyWithoutAccountNestedInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUpdateManyWithoutAccountNestedInput',
          json,
          ($checkedConvert) {
            final val = LoginUpdateManyWithoutAccountNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : LoginCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              set: $checkedConvert(
                  'set',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              disconnect: $checkedConvert(
                  'disconnect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              delete: $checkedConvert(
                  'delete',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              update: $checkedConvert(
                  'update',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              updateMany: $checkedConvert(
                  'updateMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpdateManyWithWhereWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              deleteMany: $checkedConvert(
                  'deleteMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginScalarWhereInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUpdateManyWithoutAccountNestedInputToJson(
    LoginUpdateManyWithoutAccountNestedInput instance) {
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

PersonUpdateManyWithoutAccountNestedInput
    _$PersonUpdateManyWithoutAccountNestedInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PersonUpdateManyWithoutAccountNestedInput',
          json,
          ($checkedConvert) {
            final val = PersonUpdateManyWithoutAccountNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : PersonCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              set: $checkedConvert(
                  'set',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              disconnect: $checkedConvert(
                  'disconnect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              delete: $checkedConvert(
                  'delete',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              update: $checkedConvert(
                  'update',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              updateMany: $checkedConvert(
                  'updateMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpdateManyWithWhereWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              deleteMany: $checkedConvert(
                  'deleteMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonScalarWhereInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
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

LoginUncheckedUpdateManyWithoutAccountNestedInput
    _$LoginUncheckedUpdateManyWithoutAccountNestedInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUncheckedUpdateManyWithoutAccountNestedInput',
          json,
          ($checkedConvert) {
            final val = LoginUncheckedUpdateManyWithoutAccountNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : LoginCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              set: $checkedConvert(
                  'set',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              disconnect: $checkedConvert(
                  'disconnect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              delete: $checkedConvert(
                  'delete',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              update: $checkedConvert(
                  'update',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              updateMany: $checkedConvert(
                  'updateMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginUpdateManyWithWhereWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              deleteMany: $checkedConvert(
                  'deleteMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      LoginScalarWhereInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUncheckedUpdateManyWithoutAccountNestedInputToJson(
    LoginUncheckedUpdateManyWithoutAccountNestedInput instance) {
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
        $checkedCreate(
          'PersonUncheckedUpdateManyWithoutAccountNestedInput',
          json,
          ($checkedConvert) {
            final val = PersonUncheckedUpdateManyWithoutAccountNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonCreateOrConnectWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpsertWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              createMany: $checkedConvert(
                  'createMany',
                  (v) => v == null
                      ? null
                      : PersonCreateManyAccountInputEnvelope.fromJson(
                          v as Map<String, dynamic>)),
              set: $checkedConvert(
                  'set',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              disconnect: $checkedConvert(
                  'disconnect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              delete: $checkedConvert(
                  'delete',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              connect: $checkedConvert(
                  'connect',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonWhereUniqueInput.fromJson(
                          e as Map<String, dynamic>))),
              update: $checkedConvert(
                  'update',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpdateWithWhereUniqueWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              updateMany: $checkedConvert(
                  'updateMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonUpdateManyWithWhereWithoutAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              deleteMany: $checkedConvert(
                  'deleteMany',
                  (v) => (v as List<dynamic>?)?.map((e) =>
                      PersonScalarWhereInput.fromJson(
                          e as Map<String, dynamic>))),
            );
            return val;
          },
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

AccountCreateNestedOneWithoutLoginInput
    _$AccountCreateNestedOneWithoutLoginInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountCreateNestedOneWithoutLoginInput',
          json,
          ($checkedConvert) {
            final val = AccountCreateNestedOneWithoutLoginInput(
              create: $checkedConvert(
                  'create',
                  (v) => v == null
                      ? null
                      : AccountCreateWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => v == null
                      ? null
                      : AccountCreateOrConnectWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => v == null
                      ? null
                      : AccountWhereUniqueInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$AccountCreateNestedOneWithoutLoginInputToJson(
    AccountCreateNestedOneWithoutLoginInput instance) {
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

AccountUpdateOneRequiredWithoutLoginNestedInput
    _$AccountUpdateOneRequiredWithoutLoginNestedInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountUpdateOneRequiredWithoutLoginNestedInput',
          json,
          ($checkedConvert) {
            final val = AccountUpdateOneRequiredWithoutLoginNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => v == null
                      ? null
                      : AccountCreateWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => v == null
                      ? null
                      : AccountCreateOrConnectWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => v == null
                      ? null
                      : AccountUpsertWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => v == null
                      ? null
                      : AccountWhereUniqueInput.fromJson(
                          v as Map<String, dynamic>)),
              update: $checkedConvert(
                  'update',
                  (v) => v == null
                      ? null
                      : AccountUpdateWithoutLoginInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$AccountUpdateOneRequiredWithoutLoginNestedInputToJson(
    AccountUpdateOneRequiredWithoutLoginNestedInput instance) {
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

AccountCreateNestedOneWithoutPersonInput
    _$AccountCreateNestedOneWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountCreateNestedOneWithoutPersonInput',
          json,
          ($checkedConvert) {
            final val = AccountCreateNestedOneWithoutPersonInput(
              create: $checkedConvert(
                  'create',
                  (v) => v == null
                      ? null
                      : AccountCreateWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => v == null
                      ? null
                      : AccountCreateOrConnectWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => v == null
                      ? null
                      : AccountWhereUniqueInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
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

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'NullableStringFieldUpdateOperationsInput',
          json,
          ($checkedConvert) {
            final val = NullableStringFieldUpdateOperationsInput(
              set: $checkedConvert('set', (v) => v as String?),
            );
            return val;
          },
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
        $checkedCreate(
          'AccountUpdateOneRequiredWithoutPersonNestedInput',
          json,
          ($checkedConvert) {
            final val = AccountUpdateOneRequiredWithoutPersonNestedInput(
              create: $checkedConvert(
                  'create',
                  (v) => v == null
                      ? null
                      : AccountCreateWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
              connectOrCreate: $checkedConvert(
                  'connectOrCreate',
                  (v) => v == null
                      ? null
                      : AccountCreateOrConnectWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
              upsert: $checkedConvert(
                  'upsert',
                  (v) => v == null
                      ? null
                      : AccountUpsertWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
              connect: $checkedConvert(
                  'connect',
                  (v) => v == null
                      ? null
                      : AccountWhereUniqueInput.fromJson(
                          v as Map<String, dynamic>)),
              update: $checkedConvert(
                  'update',
                  (v) => v == null
                      ? null
                      : AccountUpdateWithoutPersonInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
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
    $checkedCreate(
      'NestedBigIntFilter',
      json,
      ($checkedConvert) {
        final val = NestedBigIntFilter(
          equals: $checkedConvert(
              'equals', (v) => v == null ? null : BigInt.parse(v as String)),
          $in: $checkedConvert(
              'in',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          lt: $checkedConvert(
              'lt', (v) => v == null ? null : BigInt.parse(v as String)),
          lte: $checkedConvert(
              'lte', (v) => v == null ? null : BigInt.parse(v as String)),
          gt: $checkedConvert(
              'gt', (v) => v == null ? null : BigInt.parse(v as String)),
          gte: $checkedConvert(
              'gte', (v) => v == null ? null : BigInt.parse(v as String)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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
    $checkedCreate(
      'NestedStringFilter',
      json,
      ($checkedConvert) {
        final val = NestedStringFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NestedDateTimeFilter',
      json,
      ($checkedConvert) {
        final val = NestedDateTimeFilter(
          equals: $checkedConvert(
              'equals',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          $in: $checkedConvert(
              'in',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          lt: $checkedConvert(
              'lt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          lte: $checkedConvert(
              'lte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gt: $checkedConvert(
              'gt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gte: $checkedConvert(
              'gte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

NestedBigIntWithAggregatesFilter _$NestedBigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NestedBigIntWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = NestedBigIntWithAggregatesFilter(
          equals: $checkedConvert(
              'equals', (v) => v == null ? null : BigInt.parse(v as String)),
          $in: $checkedConvert(
              'in',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => BigInt.parse(e as String))),
          lt: $checkedConvert(
              'lt', (v) => v == null ? null : BigInt.parse(v as String)),
          lte: $checkedConvert(
              'lte', (v) => v == null ? null : BigInt.parse(v as String)),
          gt: $checkedConvert(
              'gt', (v) => v == null ? null : BigInt.parse(v as String)),
          gte: $checkedConvert(
              'gte', (v) => v == null ? null : BigInt.parse(v as String)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedBigIntWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $avg: $checkedConvert(
              '_avg',
              (v) => v == null
                  ? null
                  : NestedFloatFilter.fromJson(v as Map<String, dynamic>)),
          $sum: $checkedConvert(
              '_sum',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedBigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$avg': '_avg',
        r'$sum': '_sum',
        r'$min': '_min',
        r'$max': '_max'
      },
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
    $checkedCreate(
      'NestedIntFilter',
      json,
      ($checkedConvert) {
        final val = NestedIntFilter(
          equals: $checkedConvert('equals', (v) => v as int?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as int)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as int)),
          lt: $checkedConvert('lt', (v) => v as int?),
          lte: $checkedConvert('lte', (v) => v as int?),
          gt: $checkedConvert('gt', (v) => v as int?),
          gte: $checkedConvert('gte', (v) => v as int?),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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
    $checkedCreate(
      'NestedFloatFilter',
      json,
      ($checkedConvert) {
        final val = NestedFloatFilter(
          equals: $checkedConvert('equals', (v) => (v as num?)?.toDouble()),
          $in: $checkedConvert('in',
              (v) => (v as List<dynamic>?)?.map((e) => (e as num).toDouble())),
          notIn: $checkedConvert('notIn',
              (v) => (v as List<dynamic>?)?.map((e) => (e as num).toDouble())),
          lt: $checkedConvert('lt', (v) => (v as num?)?.toDouble()),
          lte: $checkedConvert('lte', (v) => (v as num?)?.toDouble()),
          gt: $checkedConvert('gt', (v) => (v as num?)?.toDouble()),
          gte: $checkedConvert('gte', (v) => (v as num?)?.toDouble()),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedFloatFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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
    $checkedCreate(
      'NestedStringWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = NestedStringWithAggregatesFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedStringFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$min': '_min',
        r'$max': '_max'
      },
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

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NestedDateTimeWithAggregatesFilter',
      json,
      ($checkedConvert) {
        final val = NestedDateTimeWithAggregatesFilter(
          equals: $checkedConvert(
              'equals',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          $in: $checkedConvert(
              'in',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          notIn: $checkedConvert(
              'notIn',
              (v) => (v as List<dynamic>?)?.map(
                  (e) => const DateTimeJsonConverter().fromJson(e as String))),
          lt: $checkedConvert(
              'lt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          lte: $checkedConvert(
              'lte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gt: $checkedConvert(
              'gt',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          gte: $checkedConvert(
              'gte',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedDateTimeWithAggregatesFilter.fromJson(
                      v as Map<String, dynamic>)),
          $count: $checkedConvert(
              '_count',
              (v) => v == null
                  ? null
                  : NestedIntFilter.fromJson(v as Map<String, dynamic>)),
          $min: $checkedConvert(
              '_min',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
          $max: $checkedConvert(
              '_max',
              (v) => v == null
                  ? null
                  : NestedDateTimeFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        r'$in': 'in',
        r'$count': '_count',
        r'$min': '_min',
        r'$max': '_max'
      },
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

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NestedStringNullableFilter',
      json,
      ($checkedConvert) {
        final val = NestedStringNullableFilter(
          equals: $checkedConvert('equals', (v) => v as String?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
          lt: $checkedConvert('lt', (v) => v as String?),
          lte: $checkedConvert('lte', (v) => v as String?),
          gt: $checkedConvert('gt', (v) => v as String?),
          gte: $checkedConvert('gte', (v) => v as String?),
          contains: $checkedConvert('contains', (v) => v as String?),
          startsWith: $checkedConvert('startsWith', (v) => v as String?),
          endsWith: $checkedConvert('endsWith', (v) => v as String?),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedStringNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'NestedStringNullableWithAggregatesFilter',
          json,
          ($checkedConvert) {
            final val = NestedStringNullableWithAggregatesFilter(
              equals: $checkedConvert('equals', (v) => v as String?),
              $in: $checkedConvert(
                  'in', (v) => (v as List<dynamic>?)?.map((e) => e as String)),
              notIn: $checkedConvert('notIn',
                  (v) => (v as List<dynamic>?)?.map((e) => e as String)),
              lt: $checkedConvert('lt', (v) => v as String?),
              lte: $checkedConvert('lte', (v) => v as String?),
              gt: $checkedConvert('gt', (v) => v as String?),
              gte: $checkedConvert('gte', (v) => v as String?),
              contains: $checkedConvert('contains', (v) => v as String?),
              startsWith: $checkedConvert('startsWith', (v) => v as String?),
              endsWith: $checkedConvert('endsWith', (v) => v as String?),
              not: $checkedConvert(
                  'not',
                  (v) => v == null
                      ? null
                      : NestedStringNullableWithAggregatesFilter.fromJson(
                          v as Map<String, dynamic>)),
              $count: $checkedConvert(
                  '_count',
                  (v) => v == null
                      ? null
                      : NestedIntNullableFilter.fromJson(
                          v as Map<String, dynamic>)),
              $min: $checkedConvert(
                  '_min',
                  (v) => v == null
                      ? null
                      : NestedStringNullableFilter.fromJson(
                          v as Map<String, dynamic>)),
              $max: $checkedConvert(
                  '_max',
                  (v) => v == null
                      ? null
                      : NestedStringNullableFilter.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            r'$in': 'in',
            r'$count': '_count',
            r'$min': '_min',
            r'$max': '_max'
          },
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
    $checkedCreate(
      'NestedIntNullableFilter',
      json,
      ($checkedConvert) {
        final val = NestedIntNullableFilter(
          equals: $checkedConvert('equals', (v) => v as int?),
          $in: $checkedConvert(
              'in', (v) => (v as List<dynamic>?)?.map((e) => e as int)),
          notIn: $checkedConvert(
              'notIn', (v) => (v as List<dynamic>?)?.map((e) => e as int)),
          lt: $checkedConvert('lt', (v) => v as int?),
          lte: $checkedConvert('lte', (v) => v as int?),
          gt: $checkedConvert('gt', (v) => v as int?),
          gte: $checkedConvert('gte', (v) => v as int?),
          not: $checkedConvert(
              'not',
              (v) => v == null
                  ? null
                  : NestedIntNullableFilter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {r'$in': 'in'},
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

LoginCreateWithoutAccountInput _$LoginCreateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCreateWithoutAccountInput',
      json,
      ($checkedConvert) {
        final val = LoginCreateWithoutAccountInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginCreateWithoutAccountInputToJson(
    LoginCreateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  return val;
}

LoginUncheckedCreateWithoutAccountInput
    _$LoginUncheckedCreateWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUncheckedCreateWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUncheckedCreateWithoutAccountInput(
              id: $checkedConvert(
                  'id', (v) => v == null ? null : BigInt.parse(v as String)),
              token: $checkedConvert('token', (v) => v as String),
              createdAt: $checkedConvert('created_at',
                  (v) => const DateTimeJsonConverter().fromJson(v as String)),
              expiresAt: $checkedConvert('expires_at',
                  (v) => const DateTimeJsonConverter().fromJson(v as String)),
            );
            return val;
          },
          fieldKeyMap: const {
            'createdAt': 'created_at',
            'expiresAt': 'expires_at'
          },
        );

Map<String, dynamic> _$LoginUncheckedCreateWithoutAccountInputToJson(
    LoginUncheckedCreateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  return val;
}

LoginCreateOrConnectWithoutAccountInput
    _$LoginCreateOrConnectWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginCreateOrConnectWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginCreateOrConnectWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => LoginWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => LoginCreateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginCreateOrConnectWithoutAccountInputToJson(
        LoginCreateOrConnectWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

LoginCreateManyAccountInputEnvelope
    _$LoginCreateManyAccountInputEnvelopeFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginCreateManyAccountInputEnvelope',
          json,
          ($checkedConvert) {
            final val = LoginCreateManyAccountInputEnvelope(
              data: $checkedConvert(
                  'data',
                  (v) => (v as List<dynamic>).map((e) =>
                      LoginCreateManyAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              skipDuplicates:
                  $checkedConvert('skipDuplicates', (v) => v as bool?),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginCreateManyAccountInputEnvelopeToJson(
    LoginCreateManyAccountInputEnvelope instance) {
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

PersonCreateWithoutAccountInput _$PersonCreateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonCreateWithoutAccountInput',
      json,
      ($checkedConvert) {
        final val = PersonCreateWithoutAccountInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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
        $checkedCreate(
          'PersonUncheckedCreateWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUncheckedCreateWithoutAccountInput(
              id: $checkedConvert(
                  'id', (v) => v == null ? null : BigInt.parse(v as String)),
              firstName: $checkedConvert('first_name', (v) => v as String),
              lastName: $checkedConvert('last_name', (v) => v as String),
              gender: $checkedConvert('gender', (v) => v as String),
              dateOfBirth: $checkedConvert('date_of_birth',
                  (v) => const DateTimeJsonConverter().fromJson(v as String)),
              email: $checkedConvert('email', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {
            'firstName': 'first_name',
            'lastName': 'last_name',
            'dateOfBirth': 'date_of_birth'
          },
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
        $checkedCreate(
          'PersonCreateOrConnectWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonCreateOrConnectWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => PersonWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => PersonCreateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$PersonCreateOrConnectWithoutAccountInputToJson(
        PersonCreateOrConnectWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

PersonCreateManyAccountInputEnvelope
    _$PersonCreateManyAccountInputEnvelopeFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'PersonCreateManyAccountInputEnvelope',
          json,
          ($checkedConvert) {
            final val = PersonCreateManyAccountInputEnvelope(
              data: $checkedConvert(
                  'data',
                  (v) => (v as List<dynamic>).map((e) =>
                      PersonCreateManyAccountInput.fromJson(
                          e as Map<String, dynamic>))),
              skipDuplicates:
                  $checkedConvert('skipDuplicates', (v) => v as bool?),
            );
            return val;
          },
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

LoginUpsertWithWhereUniqueWithoutAccountInput
    _$LoginUpsertWithWhereUniqueWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUpsertWithWhereUniqueWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUpsertWithWhereUniqueWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => LoginWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              update: $checkedConvert(
                  'update',
                  (v) => LoginUpdateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => LoginCreateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUpsertWithWhereUniqueWithoutAccountInputToJson(
        LoginUpsertWithWhereUniqueWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

LoginUpdateWithWhereUniqueWithoutAccountInput
    _$LoginUpdateWithWhereUniqueWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUpdateWithWhereUniqueWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUpdateWithWhereUniqueWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => LoginWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              data: $checkedConvert(
                  'data',
                  (v) => LoginUpdateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUpdateWithWhereUniqueWithoutAccountInputToJson(
        LoginUpdateWithWhereUniqueWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

LoginUpdateManyWithWhereWithoutAccountInput
    _$LoginUpdateManyWithWhereWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUpdateManyWithWhereWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUpdateManyWithWhereWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => LoginScalarWhereInput.fromJson(
                      v as Map<String, dynamic>)),
              data: $checkedConvert(
                  'data',
                  (v) => LoginUpdateManyMutationInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$LoginUpdateManyWithWhereWithoutAccountInputToJson(
        LoginUpdateManyWithWhereWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

LoginScalarWhereInput _$LoginScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginScalarWhereInput',
      json,
      ($checkedConvert) {
        final val = LoginScalarWhereInput(
          AND: $checkedConvert(
              'AND',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  LoginScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          OR: $checkedConvert(
              'OR',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  LoginScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          NOT: $checkedConvert(
              'NOT',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  LoginScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginScalarWhereInputToJson(
    LoginScalarWhereInput instance) {
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
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  writeNotNull('account_id', instance.accountId?.toJson());
  return val;
}

PersonUpsertWithWhereUniqueWithoutAccountInput
    _$PersonUpsertWithWhereUniqueWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PersonUpsertWithWhereUniqueWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUpsertWithWhereUniqueWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => PersonWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              update: $checkedConvert(
                  'update',
                  (v) => PersonUpdateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => PersonCreateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
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
        $checkedCreate(
          'PersonUpdateWithWhereUniqueWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUpdateWithWhereUniqueWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => PersonWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              data: $checkedConvert(
                  'data',
                  (v) => PersonUpdateWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
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
        $checkedCreate(
          'PersonUpdateManyWithWhereWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUpdateManyWithWhereWithoutAccountInput(
              where: $checkedConvert(
                  'where',
                  (v) => PersonScalarWhereInput.fromJson(
                      v as Map<String, dynamic>)),
              data: $checkedConvert(
                  'data',
                  (v) => PersonUpdateManyMutationInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$PersonUpdateManyWithWhereWithoutAccountInputToJson(
        PersonUpdateManyWithWhereWithoutAccountInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

PersonScalarWhereInput _$PersonScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonScalarWhereInput',
      json,
      ($checkedConvert) {
        final val = PersonScalarWhereInput(
          AND: $checkedConvert(
              'AND',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  PersonScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          OR: $checkedConvert(
              'OR',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  PersonScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          NOT: $checkedConvert(
              'NOT',
              (v) => (v as List<dynamic>?)?.map((e) =>
                  PersonScalarWhereInput.fromJson(e as Map<String, dynamic>))),
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFilter.fromJson(v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFilter.fromJson(v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : StringNullableFilter.fromJson(v as Map<String, dynamic>)),
          accountId: $checkedConvert(
              'account_id',
              (v) => v == null
                  ? null
                  : BigIntFilter.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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

AccountCreateWithoutLoginInput _$AccountCreateWithoutLoginInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountCreateWithoutLoginInput',
      json,
      ($checkedConvert) {
        final val = AccountCreateWithoutLoginInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$AccountCreateWithoutLoginInputToJson(
    AccountCreateWithoutLoginInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedCreateWithoutLoginInput
    _$AccountUncheckedCreateWithoutLoginInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountUncheckedCreateWithoutLoginInput',
          json,
          ($checkedConvert) {
            final val = AccountUncheckedCreateWithoutLoginInput(
              id: $checkedConvert(
                  'id', (v) => v == null ? null : BigInt.parse(v as String)),
              username: $checkedConvert('username', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              createdAt: $checkedConvert('created_at',
                  (v) => const DateTimeJsonConverter().fromJson(v as String)),
              person: $checkedConvert(
                  'person',
                  (v) => v == null
                      ? null
                      : PersonUncheckedCreateNestedManyWithoutAccountInput
                          .fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'createdAt': 'created_at'},
        );

Map<String, dynamic> _$AccountUncheckedCreateWithoutLoginInputToJson(
    AccountUncheckedCreateWithoutLoginInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['username'] = instance.username;
  val['password'] = instance.password;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountCreateOrConnectWithoutLoginInput
    _$AccountCreateOrConnectWithoutLoginInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountCreateOrConnectWithoutLoginInput',
          json,
          ($checkedConvert) {
            final val = AccountCreateOrConnectWithoutLoginInput(
              where: $checkedConvert(
                  'where',
                  (v) => AccountWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => AccountCreateWithoutLoginInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$AccountCreateOrConnectWithoutLoginInputToJson(
        AccountCreateOrConnectWithoutLoginInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpsertWithoutLoginInput _$AccountUpsertWithoutLoginInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpsertWithoutLoginInput',
      json,
      ($checkedConvert) {
        final val = AccountUpsertWithoutLoginInput(
          update: $checkedConvert(
              'update',
              (v) => AccountUpdateWithoutLoginInput.fromJson(
                  v as Map<String, dynamic>)),
          create: $checkedConvert(
              'create',
              (v) => AccountCreateWithoutLoginInput.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AccountUpsertWithoutLoginInputToJson(
        AccountUpsertWithoutLoginInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpdateWithoutLoginInput _$AccountUpdateWithoutLoginInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpdateWithoutLoginInput',
      json,
      ($checkedConvert) {
        final val = AccountUpdateWithoutLoginInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          person: $checkedConvert(
              'person',
              (v) => v == null
                  ? null
                  : PersonUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$AccountUpdateWithoutLoginInputToJson(
    AccountUpdateWithoutLoginInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountUncheckedUpdateWithoutLoginInput
    _$AccountUncheckedUpdateWithoutLoginInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountUncheckedUpdateWithoutLoginInput',
          json,
          ($checkedConvert) {
            final val = AccountUncheckedUpdateWithoutLoginInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              username: $checkedConvert(
                  'username',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              password: $checkedConvert(
                  'password',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              person: $checkedConvert(
                  'person',
                  (v) => v == null
                      ? null
                      : PersonUncheckedUpdateManyWithoutAccountNestedInput
                          .fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'createdAt': 'created_at'},
        );

Map<String, dynamic> _$AccountUncheckedUpdateWithoutLoginInputToJson(
    AccountUncheckedUpdateWithoutLoginInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('person', instance.person?.toJson());
  return val;
}

AccountCreateWithoutPersonInput _$AccountCreateWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountCreateWithoutPersonInput',
      json,
      ($checkedConvert) {
        final val = AccountCreateWithoutPersonInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginCreateNestedManyWithoutAccountInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('login', instance.login?.toJson());
  return val;
}

AccountUncheckedCreateWithoutPersonInput
    _$AccountUncheckedCreateWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountUncheckedCreateWithoutPersonInput',
          json,
          ($checkedConvert) {
            final val = AccountUncheckedCreateWithoutPersonInput(
              id: $checkedConvert(
                  'id', (v) => v == null ? null : BigInt.parse(v as String)),
              username: $checkedConvert('username', (v) => v as String),
              password: $checkedConvert('password', (v) => v as String),
              createdAt: $checkedConvert('created_at',
                  (v) => const DateTimeJsonConverter().fromJson(v as String)),
              login: $checkedConvert(
                  'login',
                  (v) => v == null
                      ? null
                      : LoginUncheckedCreateNestedManyWithoutAccountInput
                          .fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'createdAt': 'created_at'},
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
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  writeNotNull('login', instance.login?.toJson());
  return val;
}

AccountCreateOrConnectWithoutPersonInput
    _$AccountCreateOrConnectWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountCreateOrConnectWithoutPersonInput',
          json,
          ($checkedConvert) {
            final val = AccountCreateOrConnectWithoutPersonInput(
              where: $checkedConvert(
                  'where',
                  (v) => AccountWhereUniqueInput.fromJson(
                      v as Map<String, dynamic>)),
              create: $checkedConvert(
                  'create',
                  (v) => AccountCreateWithoutPersonInput.fromJson(
                      v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$AccountCreateOrConnectWithoutPersonInputToJson(
        AccountCreateOrConnectWithoutPersonInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpsertWithoutPersonInput _$AccountUpsertWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpsertWithoutPersonInput',
      json,
      ($checkedConvert) {
        final val = AccountUpsertWithoutPersonInput(
          update: $checkedConvert(
              'update',
              (v) => AccountUpdateWithoutPersonInput.fromJson(
                  v as Map<String, dynamic>)),
          create: $checkedConvert(
              'create',
              (v) => AccountCreateWithoutPersonInput.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AccountUpsertWithoutPersonInputToJson(
        AccountUpsertWithoutPersonInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

AccountUpdateWithoutPersonInput _$AccountUpdateWithoutPersonInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountUpdateWithoutPersonInput',
      json,
      ($checkedConvert) {
        final val = AccountUpdateWithoutPersonInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          username: $checkedConvert(
              'username',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          password: $checkedConvert(
              'password',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          login: $checkedConvert(
              'login',
              (v) => v == null
                  ? null
                  : LoginUpdateManyWithoutAccountNestedInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('login', instance.login?.toJson());
  return val;
}

AccountUncheckedUpdateWithoutPersonInput
    _$AccountUncheckedUpdateWithoutPersonInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AccountUncheckedUpdateWithoutPersonInput',
          json,
          ($checkedConvert) {
            final val = AccountUncheckedUpdateWithoutPersonInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              username: $checkedConvert(
                  'username',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              password: $checkedConvert(
                  'password',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              login: $checkedConvert(
                  'login',
                  (v) => v == null
                      ? null
                      : LoginUncheckedUpdateManyWithoutAccountNestedInput
                          .fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('login', instance.login?.toJson());
  return val;
}

LoginCreateManyAccountInput _$LoginCreateManyAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCreateManyAccountInput',
      json,
      ($checkedConvert) {
        final val = LoginCreateManyAccountInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginCreateManyAccountInputToJson(
    LoginCreateManyAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  val['token'] = instance.token;
  val['created_at'] = const DateTimeJsonConverter().toJson(instance.createdAt);
  val['expires_at'] = const DateTimeJsonConverter().toJson(instance.expiresAt);
  return val;
}

PersonCreateManyAccountInput _$PersonCreateManyAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonCreateManyAccountInput',
      json,
      ($checkedConvert) {
        final val = PersonCreateManyAccountInput(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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

LoginUpdateWithoutAccountInput _$LoginUpdateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginUpdateWithoutAccountInput',
      json,
      ($checkedConvert) {
        final val = LoginUpdateWithoutAccountInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          createdAt: $checkedConvert(
              'created_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'expiresAt': 'expires_at'},
    );

Map<String, dynamic> _$LoginUpdateWithoutAccountInputToJson(
    LoginUpdateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  return val;
}

LoginUncheckedUpdateWithoutAccountInput
    _$LoginUncheckedUpdateWithoutAccountInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUncheckedUpdateWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = LoginUncheckedUpdateWithoutAccountInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              token: $checkedConvert(
                  'token',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              expiresAt: $checkedConvert(
                  'expires_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'createdAt': 'created_at',
            'expiresAt': 'expires_at'
          },
        );

Map<String, dynamic> _$LoginUncheckedUpdateWithoutAccountInputToJson(
    LoginUncheckedUpdateWithoutAccountInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  return val;
}

LoginUncheckedUpdateManyWithoutLoginInput
    _$LoginUncheckedUpdateManyWithoutLoginInputFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'LoginUncheckedUpdateManyWithoutLoginInput',
          json,
          ($checkedConvert) {
            final val = LoginUncheckedUpdateManyWithoutLoginInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              token: $checkedConvert(
                  'token',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              createdAt: $checkedConvert(
                  'created_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              expiresAt: $checkedConvert(
                  'expires_at',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'createdAt': 'created_at',
            'expiresAt': 'expires_at'
          },
        );

Map<String, dynamic> _$LoginUncheckedUpdateManyWithoutLoginInputToJson(
    LoginUncheckedUpdateManyWithoutLoginInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('token', instance.token?.toJson());
  writeNotNull('created_at', instance.createdAt?.toJson());
  writeNotNull('expires_at', instance.expiresAt?.toJson());
  return val;
}

PersonUpdateWithoutAccountInput _$PersonUpdateWithoutAccountInputFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonUpdateWithoutAccountInput',
      json,
      ($checkedConvert) {
        final val = PersonUpdateWithoutAccountInput(
          id: $checkedConvert(
              'id',
              (v) => v == null
                  ? null
                  : BigIntFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          firstName: $checkedConvert(
              'first_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          lastName: $checkedConvert(
              'last_name',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          gender: $checkedConvert(
              'gender',
              (v) => v == null
                  ? null
                  : StringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => v == null
                  ? null
                  : DateTimeFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
          email: $checkedConvert(
              'email',
              (v) => v == null
                  ? null
                  : NullableStringFieldUpdateOperationsInput.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth'
      },
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
        $checkedCreate(
          'PersonUncheckedUpdateWithoutAccountInput',
          json,
          ($checkedConvert) {
            final val = PersonUncheckedUpdateWithoutAccountInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              firstName: $checkedConvert(
                  'first_name',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              lastName: $checkedConvert(
                  'last_name',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              gender: $checkedConvert(
                  'gender',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              dateOfBirth: $checkedConvert(
                  'date_of_birth',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              email: $checkedConvert(
                  'email',
                  (v) => v == null
                      ? null
                      : NullableStringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'firstName': 'first_name',
            'lastName': 'last_name',
            'dateOfBirth': 'date_of_birth'
          },
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
        $checkedCreate(
          'PersonUncheckedUpdateManyWithoutPersonInput',
          json,
          ($checkedConvert) {
            final val = PersonUncheckedUpdateManyWithoutPersonInput(
              id: $checkedConvert(
                  'id',
                  (v) => v == null
                      ? null
                      : BigIntFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              firstName: $checkedConvert(
                  'first_name',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              lastName: $checkedConvert(
                  'last_name',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              gender: $checkedConvert(
                  'gender',
                  (v) => v == null
                      ? null
                      : StringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              dateOfBirth: $checkedConvert(
                  'date_of_birth',
                  (v) => v == null
                      ? null
                      : DateTimeFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
              email: $checkedConvert(
                  'email',
                  (v) => v == null
                      ? null
                      : NullableStringFieldUpdateOperationsInput.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'firstName': 'first_name',
            'lastName': 'last_name',
            'dateOfBirth': 'date_of_birth'
          },
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

Account _$AccountFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Account',
      json,
      ($checkedConvert) {
        final val = Account(
          id: $checkedConvert('id', (v) => BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id.toString(),
      'username': instance.username,
      'password': instance.password,
      'created_at': const DateTimeJsonConverter().toJson(instance.createdAt),
    };

Login _$LoginFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Login',
      json,
      ($checkedConvert) {
        final val = Login(
          id: $checkedConvert('id', (v) => BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          expiresAt: $checkedConvert('expires_at',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'id': instance.id.toString(),
      'token': instance.token,
      'created_at': const DateTimeJsonConverter().toJson(instance.createdAt),
      'expires_at': const DateTimeJsonConverter().toJson(instance.expiresAt),
      'account_id': instance.accountId.toString(),
    };

Person _$PersonFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Person',
      json,
      ($checkedConvert) {
        final val = Person(
          id: $checkedConvert('id', (v) => BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth',
              (v) => const DateTimeJsonConverter().fromJson(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          accountId:
              $checkedConvert('account_id', (v) => BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'AccountGroupByOutputType',
      json,
      ($checkedConvert) {
        final val = AccountGroupByOutputType(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          username: $checkedConvert('username', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
          createdAt: $checkedConvert(
              'created_at',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
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
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  return val;
}

LoginGroupByOutputType _$LoginGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginGroupByOutputType',
      json,
      ($checkedConvert) {
        final val = LoginGroupByOutputType(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String?),
          createdAt: $checkedConvert(
              'created_at',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          expiresAt: $checkedConvert(
              'expires_at',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          accountId: $checkedConvert('account_id',
              (v) => v == null ? null : BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'expiresAt': 'expires_at',
        'accountId': 'account_id'
      },
    );

Map<String, dynamic> _$LoginGroupByOutputTypeToJson(
    LoginGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toString());
  writeNotNull('token', instance.token);
  writeNotNull(
      'created_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'expires_at',
      _$JsonConverterToJson<String, DateTime>(
          instance.expiresAt, const DateTimeJsonConverter().toJson));
  writeNotNull('account_id', instance.accountId?.toString());
  return val;
}

PersonGroupByOutputType _$PersonGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PersonGroupByOutputType',
      json,
      ($checkedConvert) {
        final val = PersonGroupByOutputType(
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          dateOfBirth: $checkedConvert(
              'date_of_birth',
              (v) => _$JsonConverterFromJson<String, DateTime>(
                  v, const DateTimeJsonConverter().fromJson)),
          email: $checkedConvert('email', (v) => v as String?),
          accountId: $checkedConvert('account_id',
              (v) => v == null ? null : BigInt.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'dateOfBirth': 'date_of_birth',
        'accountId': 'account_id'
      },
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
    $checkedCreate(
      'AffectedRowsOutput',
      json,
      ($checkedConvert) {
        final val = AffectedRowsOutput(
          count: $checkedConvert('count', (v) => v as int?),
        );
        return val;
      },
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
