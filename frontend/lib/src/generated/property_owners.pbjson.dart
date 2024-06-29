//
//  Generated code. Do not modify.
//  source: property_owners.proto
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

@$core.Deprecated('Use updatePropertyOwnerRequestDescriptor instead')
const UpdatePropertyOwnerRequest$json = {
  '1': 'UpdatePropertyOwnerRequest',
  '2': [
    {'1': 'skyflow_id', '3': 1, '4': 1, '5': 9, '10': 'skyflowId'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UpdatePropertyOwnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyOwnerRequestDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVQcm9wZXJ0eU93bmVyUmVxdWVzdBIdCgpza3lmbG93X2lkGAEgASgJUglza3lmbG'
    '93SWQSHQoKZmlyc3RfbmFtZRgCIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgDIAEoCVII'
    'bGFzdE5hbWUSFAoFZW1haWwYBCABKAlSBWVtYWls');

@$core.Deprecated('Use updatePropertyOwnerResponseDescriptor instead')
const UpdatePropertyOwnerResponse$json = {
  '1': 'UpdatePropertyOwnerResponse',
};

/// Descriptor for `UpdatePropertyOwnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyOwnerResponseDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVQcm9wZXJ0eU93bmVyUmVzcG9uc2U=');

@$core.Deprecated('Use updatePropertyOwnerPasswordRequestDescriptor instead')
const UpdatePropertyOwnerPasswordRequest$json = {
  '1': 'UpdatePropertyOwnerPasswordRequest',
  '2': [
    {'1': 'hostel_hop_id', '3': 1, '4': 1, '5': 9, '10': 'hostelHopId'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UpdatePropertyOwnerPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyOwnerPasswordRequestDescriptor = $convert.base64Decode(
    'CiJVcGRhdGVQcm9wZXJ0eU93bmVyUGFzc3dvcmRSZXF1ZXN0EiIKDWhvc3RlbF9ob3BfaWQYAS'
    'ABKAlSC2hvc3RlbEhvcElkEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use updatePropertyOwnerPasswordResponseDescriptor instead')
const UpdatePropertyOwnerPasswordResponse$json = {
  '1': 'UpdatePropertyOwnerPasswordResponse',
};

/// Descriptor for `UpdatePropertyOwnerPasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyOwnerPasswordResponseDescriptor = $convert.base64Decode(
    'CiNVcGRhdGVQcm9wZXJ0eU93bmVyUGFzc3dvcmRSZXNwb25zZQ==');

@$core.Deprecated('Use propertyOwnerDescriptor instead')
const PropertyOwner$json = {
  '1': 'PropertyOwner',
  '2': [
    {'1': 'skyflow_id', '3': 1, '4': 1, '5': 9, '10': 'skyflowId'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'hostel_hop_id', '3': 4, '4': 1, '5': 9, '10': 'hostelHopId'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `PropertyOwner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyOwnerDescriptor = $convert.base64Decode(
    'Cg1Qcm9wZXJ0eU93bmVyEh0KCnNreWZsb3dfaWQYASABKAlSCXNreWZsb3dJZBIdCgpmaXJzdF'
    '9uYW1lGAIgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIiCg1o'
    'b3N0ZWxfaG9wX2lkGAQgASgJUgtob3N0ZWxIb3BJZBIUCgVlbWFpbBgFIAEoCVIFZW1haWw=');

