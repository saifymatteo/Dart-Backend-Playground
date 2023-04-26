///
//  Generated code. Do not modify.
//  source: services/person_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getPersonRequestDescriptor instead')
const GetPersonRequest$json = const {
  '1': 'GetPersonRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetPersonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPersonRequestDescriptor =
    $convert.base64Decode('ChBHZXRQZXJzb25SZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');
@$core.Deprecated('Use listPersonRequestDescriptor instead')
const ListPersonRequest$json = const {
  '1': 'ListPersonRequest',
  '2': const [
    const {'1': 'per_page', '3': 1, '4': 1, '5': 5, '10': 'perPage'},
  ],
};

/// Descriptor for `ListPersonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPersonRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0UGVyc29uUmVxdWVzdBIZCghwZXJfcGFnZRgBIAEoBVIHcGVyUGFnZQ==');
@$core.Deprecated('Use listPersonResponseDescriptor instead')
const ListPersonResponse$json = const {
  '1': 'ListPersonResponse',
  '2': const [
    const {'1': 'current_page', '3': 1, '4': 1, '5': 5, '10': 'currentPage'},
    const {'1': 'total_pages', '3': 2, '4': 1, '5': 5, '10': 'totalPages'},
    const {
      '1': 'persons',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.backend.PersonGrpc',
      '10': 'persons'
    },
  ],
};

/// Descriptor for `ListPersonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPersonResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0UGVyc29uUmVzcG9uc2USIQoMY3VycmVudF9wYWdlGAEgASgFUgtjdXJyZW50UGFnZRIfCgt0b3RhbF9wYWdlcxgCIAEoBVIKdG90YWxQYWdlcxItCgdwZXJzb25zGAMgAygLMhMuYmFja2VuZC5QZXJzb25HcnBjUgdwZXJzb25z');
@$core.Deprecated('Use updatePersonRequestDescriptor instead')
const UpdatePersonRequest$json = const {
  '1': 'UpdatePersonRequest',
  '2': const [
    const {
      '1': 'person',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.backend.PersonGrpc',
      '10': 'person'
    },
    const {
      '1': 'update_mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '10': 'updateMask'
    },
  ],
};

/// Descriptor for `UpdatePersonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePersonRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVQZXJzb25SZXF1ZXN0EisKBnBlcnNvbhgBIAEoCzITLmJhY2tlbmQuUGVyc29uR3JwY1IGcGVyc29uEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deletePersonRequestDescriptor instead')
const DeletePersonRequest$json = const {
  '1': 'DeletePersonRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeletePersonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePersonRequestDescriptor = $convert
    .base64Decode('ChNEZWxldGVQZXJzb25SZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');
