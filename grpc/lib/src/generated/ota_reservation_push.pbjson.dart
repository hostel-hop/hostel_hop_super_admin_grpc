//
//  Generated code. Do not modify.
//  source: ota_reservation_push.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listOtaReservationPushesRequestDescriptor instead')
const ListOtaReservationPushesRequest$json = {
  '1': 'ListOtaReservationPushesRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `ListOtaReservationPushesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOtaReservationPushesRequestDescriptor = $convert.base64Decode(
    'Ch9MaXN0T3RhUmVzZXJ2YXRpb25QdXNoZXNSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeQ'
    '==');

@$core.Deprecated('Use listOtaReservationPushesResponseDescriptor instead')
const ListOtaReservationPushesResponse$json = {
  '1': 'ListOtaReservationPushesResponse',
  '2': [
    {'1': 'ota_reservation_pushes', '3': 1, '4': 3, '5': 11, '6': '.hostelhop.v1.OtaReservationPushData', '10': 'otaReservationPushes'},
  ],
};

/// Descriptor for `ListOtaReservationPushesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOtaReservationPushesResponseDescriptor = $convert.base64Decode(
    'CiBMaXN0T3RhUmVzZXJ2YXRpb25QdXNoZXNSZXNwb25zZRJaChZvdGFfcmVzZXJ2YXRpb25fcH'
    'VzaGVzGAEgAygLMiQuaG9zdGVsaG9wLnYxLk90YVJlc2VydmF0aW9uUHVzaERhdGFSFG90YVJl'
    'c2VydmF0aW9uUHVzaGVz');

@$core.Deprecated('Use otaReservationPushDataDescriptor instead')
const OtaReservationPushData$json = {
  '1': 'OtaReservationPushData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
    {'1': 'channel_manager', '3': 3, '4': 1, '5': 9, '10': 'channelManager'},
    {'1': 'reservation', '3': 4, '4': 1, '5': 9, '10': 'reservation'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'last_attempted_at', '3': 9, '4': 1, '5': 9, '10': 'lastAttemptedAt'},
    {'1': 'retries', '3': 10, '4': 1, '5': 9, '10': 'retries'},
  ],
};

/// Descriptor for `OtaReservationPushData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List otaReservationPushDataDescriptor = $convert.base64Decode(
    'ChZPdGFSZXNlcnZhdGlvblB1c2hEYXRhEg4KAmlkGAEgASgJUgJpZBIaCghwcm9wZXJ0eRgCIA'
    'EoCVIIcHJvcGVydHkSJwoPY2hhbm5lbF9tYW5hZ2VyGAMgASgJUg5jaGFubmVsTWFuYWdlchIg'
    'CgtyZXNlcnZhdGlvbhgEIAEoCVILcmVzZXJ2YXRpb24SEgoEdHlwZRgFIAEoCVIEdHlwZRIWCg'
    'ZzdGF0dXMYBiABKAlSBnN0YXR1cxIdCgpjcmVhdGVkX2F0GAcgASgJUgljcmVhdGVkQXQSHQoK'
    'dXBkYXRlZF9hdBgIIAEoCVIJdXBkYXRlZEF0EioKEWxhc3RfYXR0ZW1wdGVkX2F0GAkgASgJUg'
    '9sYXN0QXR0ZW1wdGVkQXQSGAoHcmV0cmllcxgKIAEoCVIHcmV0cmllcw==');

