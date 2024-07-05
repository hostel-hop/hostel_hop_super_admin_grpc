//
//  Generated code. Do not modify.
//  source: role.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use updateUserRoleRequestDescriptor instead')
const UpdateUserRoleRequest$json = {
  '1': 'UpdateUserRoleRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `UpdateUserRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRoleRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVVc2VyUm9sZVJlcXVlc3QSFgoGdXNlcklkGAEgASgJUgZ1c2VySWQSEgoEcm9sZR'
    'gCIAEoCVIEcm9sZQ==');

@$core.Deprecated('Use updateUserRoleResponseDescriptor instead')
const UpdateUserRoleResponse$json = {
  '1': 'UpdateUserRoleResponse',
};

/// Descriptor for `UpdateUserRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRoleResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVVc2VyUm9sZVJlc3BvbnNl');

@$core.Deprecated('Use authorizeRequestDescriptor instead')
const AuthorizeRequest$json = {
  '1': 'AuthorizeRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `AuthorizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeRequestDescriptor = $convert.base64Decode(
    'ChBBdXRob3JpemVSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhIKBHJvbGUYAiABKA'
    'lSBHJvbGU=');

@$core.Deprecated('Use authorizeResponseDescriptor instead')
const AuthorizeResponse$json = {
  '1': 'AuthorizeResponse',
  '2': [
    {'1': 'authorized', '3': 1, '4': 1, '5': 8, '10': 'authorized'},
  ],
};

/// Descriptor for `AuthorizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeResponseDescriptor = $convert.base64Decode(
    'ChFBdXRob3JpemVSZXNwb25zZRIeCgphdXRob3JpemVkGAEgASgIUgphdXRob3JpemVk');

