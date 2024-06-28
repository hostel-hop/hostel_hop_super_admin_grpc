//
//  Generated code. Do not modify.
//  source: property_owner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getPropertyOwnersRequestDescriptor instead')
const GetPropertyOwnersRequest$json = {
  '1': 'GetPropertyOwnersRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `GetPropertyOwnersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyOwnersRequestDescriptor = $convert.base64Decode(
    'ChhHZXRQcm9wZXJ0eU93bmVyc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5');

@$core.Deprecated('Use getPropertyOwnersResponseDescriptor instead')
const GetPropertyOwnersResponse$json = {
  '1': 'GetPropertyOwnersResponse',
  '2': [
    {'1': 'owners', '3': 1, '4': 3, '5': 11, '6': '.hostelhop.v1.PropertyOwner', '10': 'owners'},
  ],
};

/// Descriptor for `GetPropertyOwnersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyOwnersResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQcm9wZXJ0eU93bmVyc1Jlc3BvbnNlEjMKBm93bmVycxgBIAMoCzIbLmhvc3RlbGhvcC'
    '52MS5Qcm9wZXJ0eU93bmVyUgZvd25lcnM=');

@$core.Deprecated('Use propertyOwnerDescriptor instead')
const PropertyOwner$json = {
  '1': 'PropertyOwner',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PropertyOwner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyOwnerDescriptor = $convert.base64Decode(
    'Cg1Qcm9wZXJ0eU93bmVyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

