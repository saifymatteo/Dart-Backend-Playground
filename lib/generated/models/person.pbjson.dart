///
//  Generated code. Do not modify.
//  source: models/person.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use personGrpcDescriptor instead')
const PersonGrpc$json = const {
  '1': 'PersonGrpc',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    const {
      '1': 'dateOfBirth',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'dateOfBirth'
    },
    const {
      '1': 'email',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'email',
      '17': true
    },
    const {
      '1': 'account',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.backend.AccountGrpc',
      '10': 'account'
    },
  ],
  '8': const [
    const {'1': '_email'},
  ],
};

/// Descriptor for `PersonGrpc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personGrpcDescriptor = $convert.base64Decode(
    'CgpQZXJzb25HcnBjEg4KAmlkGAEgASgFUgJpZBIcCglmaXJzdE5hbWUYAiABKAlSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgDIAEoCVIIbGFzdE5hbWUSFgoGZ2VuZGVyGAQgASgJUgZnZW5kZXISPAoLZGF0ZU9mQmlydGgYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtkYXRlT2ZCaXJ0aBIZCgVlbWFpbBgGIAEoCUgAUgVlbWFpbIgBARIuCgdhY2NvdW50GAcgASgLMhQuYmFja2VuZC5BY2NvdW50R3JwY1IHYWNjb3VudEIICgZfZW1haWw=');
