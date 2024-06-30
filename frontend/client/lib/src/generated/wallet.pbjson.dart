//
//  Generated code. Do not modify.
//  source: wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getWalletsRequestDescriptor instead')
const GetWalletsRequest$json = {
  '1': 'GetWalletsRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `GetWalletsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletsRequestDescriptor = $convert.base64Decode(
    'ChFHZXRXYWxsZXRzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcnk=');

@$core.Deprecated('Use getWalletsResponseDescriptor instead')
const GetWalletsResponse$json = {
  '1': 'GetWalletsResponse',
  '2': [
    {'1': 'wallets', '3': 1, '4': 3, '5': 11, '6': '.hostelhop.v1.Wallet', '10': 'wallets'},
  ],
};

/// Descriptor for `GetWalletsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletsResponseDescriptor = $convert.base64Decode(
    'ChJHZXRXYWxsZXRzUmVzcG9uc2USLgoHd2FsbGV0cxgBIAMoCzIULmhvc3RlbGhvcC52MS5XYW'
    'xsZXRSB3dhbGxldHM=');

@$core.Deprecated('Use getWalletRequestDescriptor instead')
const GetWalletRequest$json = {
  '1': 'GetWalletRequest',
  '2': [
    {'1': 'backpackerId', '3': 1, '4': 1, '5': 9, '10': 'backpackerId'},
  ],
};

/// Descriptor for `GetWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletRequestDescriptor = $convert.base64Decode(
    'ChBHZXRXYWxsZXRSZXF1ZXN0EiIKDGJhY2twYWNrZXJJZBgBIAEoCVIMYmFja3BhY2tlcklk');

@$core.Deprecated('Use getWalletResponseDescriptor instead')
const GetWalletResponse$json = {
  '1': 'GetWalletResponse',
  '2': [
    {'1': 'wallet', '3': 1, '4': 1, '5': 11, '6': '.hostelhop.v1.Wallet', '10': 'wallet'},
  ],
};

/// Descriptor for `GetWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletResponseDescriptor = $convert.base64Decode(
    'ChFHZXRXYWxsZXRSZXNwb25zZRIsCgZ3YWxsZXQYASABKAsyFC5ob3N0ZWxob3AudjEuV2FsbG'
    'V0UgZ3YWxsZXQ=');

@$core.Deprecated('Use walletDescriptor instead')
const Wallet$json = {
  '1': 'Wallet',
  '2': [
    {'1': 'backpacker_id', '3': 1, '4': 1, '5': 9, '10': 'backpackerId'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'balance_of_withdrawable_credits', '3': 3, '4': 1, '5': 5, '10': 'balanceOfWithdrawableCredits'},
    {'1': 'balance_of_non_withdrawable_credits', '3': 4, '4': 1, '5': 5, '10': 'balanceOfNonWithdrawableCredits'},
    {'1': 'balance_of_pending_withdrawable_credits', '3': 5, '4': 1, '5': 5, '10': 'balanceOfPendingWithdrawableCredits'},
    {'1': 'balance_of_pending_non_withdrawable_credits', '3': 6, '4': 1, '5': 5, '10': 'balanceOfPendingNonWithdrawableCredits'},
  ],
};

/// Descriptor for `Wallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletDescriptor = $convert.base64Decode(
    'CgZXYWxsZXQSIwoNYmFja3BhY2tlcl9pZBgBIAEoCVIMYmFja3BhY2tlcklkEhoKCHVzZXJuYW'
    '1lGAIgASgJUgh1c2VybmFtZRJFCh9iYWxhbmNlX29mX3dpdGhkcmF3YWJsZV9jcmVkaXRzGAMg'
    'ASgFUhxiYWxhbmNlT2ZXaXRoZHJhd2FibGVDcmVkaXRzEkwKI2JhbGFuY2Vfb2Zfbm9uX3dpdG'
    'hkcmF3YWJsZV9jcmVkaXRzGAQgASgFUh9iYWxhbmNlT2ZOb25XaXRoZHJhd2FibGVDcmVkaXRz'
    'ElQKJ2JhbGFuY2Vfb2ZfcGVuZGluZ193aXRoZHJhd2FibGVfY3JlZGl0cxgFIAEoBVIjYmFsYW'
    '5jZU9mUGVuZGluZ1dpdGhkcmF3YWJsZUNyZWRpdHMSWworYmFsYW5jZV9vZl9wZW5kaW5nX25v'
    'bl93aXRoZHJhd2FibGVfY3JlZGl0cxgGIAEoBVImYmFsYW5jZU9mUGVuZGluZ05vbldpdGhkcm'
    'F3YWJsZUNyZWRpdHM=');

