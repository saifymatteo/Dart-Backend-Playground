///
//  Generated code. Do not modify.
//  source: models/person.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use personDescriptor instead')
const Person$json = const {
  '1': 'Person',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'dateOfBirth', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateOfBirth'},
    const {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'account', '3': 7, '4': 1, '5': 11, '6': '.backend.Account', '10': 'account'},
  ],
};

/// Descriptor for `Person`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personDescriptor = $convert.base64Decode('CgZQZXJzb24SDgoCaWQYASABKAVSAmlkEhwKCWZpcnN0TmFtZRgCIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW1lGAMgASgJUghsYXN0TmFtZRIWCgZnZW5kZXIYBCABKAlSBmdlbmRlchI8CgtkYXRlT2ZCaXJ0aBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2RhdGVPZkJpcnRoEhQKBWVtYWlsGAYgASgJUgVlbWFpbBIqCgdhY2NvdW50GAcgASgLMhAuYmFja2VuZC5BY2NvdW50UgdhY2NvdW50');
