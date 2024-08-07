//
//  Generated code. Do not modify.
//  source: ambassador.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getReferralsRequestDescriptor instead')
const GetReferralsRequest$json = {
  '1': 'GetReferralsRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `GetReferralsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferralsRequestDescriptor = $convert.base64Decode(
    'ChNHZXRSZWZlcnJhbHNSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeQ==');

@$core.Deprecated('Use getReferralsResponseDescriptor instead')
const GetReferralsResponse$json = {
  '1': 'GetReferralsResponse',
  '2': [
    {'1': 'referrals', '3': 1, '4': 3, '5': 11, '6': '.hostelhop.v1.Referral', '10': 'referrals'},
  ],
};

/// Descriptor for `GetReferralsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReferralsResponseDescriptor = $convert.base64Decode(
    'ChRHZXRSZWZlcnJhbHNSZXNwb25zZRI0CglyZWZlcnJhbHMYASADKAsyFi5ob3N0ZWxob3Audj'
    'EuUmVmZXJyYWxSCXJlZmVycmFscw==');

@$core.Deprecated('Use referralDescriptor instead')
const Referral$json = {
  '1': 'Referral',
  '2': [
    {'1': 'backpacker_id', '3': 1, '4': 1, '5': 9, '10': 'backpackerId'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `Referral`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referralDescriptor = $convert.base64Decode(
    'CghSZWZlcnJhbBIjCg1iYWNrcGFja2VyX2lkGAEgASgJUgxiYWNrcGFja2VySWQSEgoEY29kZR'
    'gCIAEoCVIEY29kZRISCgR0eXBlGAMgASgFUgR0eXBlEhoKCHVzZXJuYW1lGAQgASgJUgh1c2Vy'
    'bmFtZQ==');

@$core.Deprecated('Use changeAmbassadorStatusRequestDescriptor instead')
const ChangeAmbassadorStatusRequest$json = {
  '1': 'ChangeAmbassadorStatusRequest',
  '2': [
    {'1': 'backpacker_id', '3': 1, '4': 1, '5': 9, '10': 'backpackerId'},
    {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `ChangeAmbassadorStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeAmbassadorStatusRequestDescriptor = $convert.base64Decode(
    'Ch1DaGFuZ2VBbWJhc3NhZG9yU3RhdHVzUmVxdWVzdBIjCg1iYWNrcGFja2VyX2lkGAEgASgJUg'
    'xiYWNrcGFja2VySWQSEgoEdHlwZRgCIAEoBVIEdHlwZQ==');

@$core.Deprecated('Use changeAmbassadorStatusResponseDescriptor instead')
const ChangeAmbassadorStatusResponse$json = {
  '1': 'ChangeAmbassadorStatusResponse',
};

/// Descriptor for `ChangeAmbassadorStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeAmbassadorStatusResponseDescriptor = $convert.base64Decode(
    'Ch5DaGFuZ2VBbWJhc3NhZG9yU3RhdHVzUmVzcG9uc2U=');

