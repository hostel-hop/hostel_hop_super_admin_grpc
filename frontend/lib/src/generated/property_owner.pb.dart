//
//  Generated code. Do not modify.
//  source: property_owner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetPropertyOwnersRequest extends $pb.GeneratedMessage {
  factory GetPropertyOwnersRequest({
    $core.String? query,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  GetPropertyOwnersRequest._() : super();
  factory GetPropertyOwnersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyOwnersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyOwnersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyOwnersRequest clone() => GetPropertyOwnersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyOwnersRequest copyWith(void Function(GetPropertyOwnersRequest) updates) => super.copyWith((message) => updates(message as GetPropertyOwnersRequest)) as GetPropertyOwnersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyOwnersRequest create() => GetPropertyOwnersRequest._();
  GetPropertyOwnersRequest createEmptyInstance() => create();
  static $pb.PbList<GetPropertyOwnersRequest> createRepeated() => $pb.PbList<GetPropertyOwnersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyOwnersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyOwnersRequest>(create);
  static GetPropertyOwnersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class GetPropertyOwnersResponse extends $pb.GeneratedMessage {
  factory GetPropertyOwnersResponse({
    $core.Iterable<PropertyOwner>? owners,
  }) {
    final $result = create();
    if (owners != null) {
      $result.owners.addAll(owners);
    }
    return $result;
  }
  GetPropertyOwnersResponse._() : super();
  factory GetPropertyOwnersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyOwnersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyOwnersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..pc<PropertyOwner>(1, _omitFieldNames ? '' : 'owners', $pb.PbFieldType.PM, subBuilder: PropertyOwner.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyOwnersResponse clone() => GetPropertyOwnersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyOwnersResponse copyWith(void Function(GetPropertyOwnersResponse) updates) => super.copyWith((message) => updates(message as GetPropertyOwnersResponse)) as GetPropertyOwnersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyOwnersResponse create() => GetPropertyOwnersResponse._();
  GetPropertyOwnersResponse createEmptyInstance() => create();
  static $pb.PbList<GetPropertyOwnersResponse> createRepeated() => $pb.PbList<GetPropertyOwnersResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyOwnersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyOwnersResponse>(create);
  static GetPropertyOwnersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PropertyOwner> get owners => $_getList(0);
}

class PropertyOwner extends $pb.GeneratedMessage {
  factory PropertyOwner({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  PropertyOwner._() : super();
  factory PropertyOwner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyOwner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyOwner', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyOwner clone() => PropertyOwner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyOwner copyWith(void Function(PropertyOwner) updates) => super.copyWith((message) => updates(message as PropertyOwner)) as PropertyOwner;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyOwner create() => PropertyOwner._();
  PropertyOwner createEmptyInstance() => create();
  static $pb.PbList<PropertyOwner> createRepeated() => $pb.PbList<PropertyOwner>();
  @$core.pragma('dart2js:noInline')
  static PropertyOwner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyOwner>(create);
  static PropertyOwner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
