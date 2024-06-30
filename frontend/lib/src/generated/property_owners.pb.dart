//
//  Generated code. Do not modify.
//  source: property_owners.proto
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

class UpdatePropertyOwnerRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerRequest({
    $core.String? skyflowId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
  }) {
    final $result = create();
    if (skyflowId != null) {
      $result.skyflowId = skyflowId;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  UpdatePropertyOwnerRequest._() : super();
  factory UpdatePropertyOwnerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'skyflowId')
    ..aOS(2, _omitFieldNames ? '' : 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerRequest clone() => UpdatePropertyOwnerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerRequest copyWith(void Function(UpdatePropertyOwnerRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerRequest)) as UpdatePropertyOwnerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerRequest create() => UpdatePropertyOwnerRequest._();
  UpdatePropertyOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerRequest> createRepeated() => $pb.PbList<UpdatePropertyOwnerRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerRequest>(create);
  static UpdatePropertyOwnerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skyflowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skyflowId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkyflowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkyflowId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);
}

class UpdatePropertyOwnerEmailRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerEmailRequest({
    $core.String? skyflowId,
    $core.String? email,
  }) {
    final $result = create();
    if (skyflowId != null) {
      $result.skyflowId = skyflowId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  UpdatePropertyOwnerEmailRequest._() : super();
  factory UpdatePropertyOwnerEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'skyflowId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerEmailRequest clone() => UpdatePropertyOwnerEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerEmailRequest copyWith(void Function(UpdatePropertyOwnerEmailRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerEmailRequest)) as UpdatePropertyOwnerEmailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerEmailRequest create() => UpdatePropertyOwnerEmailRequest._();
  UpdatePropertyOwnerEmailRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerEmailRequest> createRepeated() => $pb.PbList<UpdatePropertyOwnerEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerEmailRequest>(create);
  static UpdatePropertyOwnerEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skyflowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skyflowId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkyflowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkyflowId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class UpdatePropertyOwnerResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerResponse() => create();
  UpdatePropertyOwnerResponse._() : super();
  factory UpdatePropertyOwnerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerResponse clone() => UpdatePropertyOwnerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerResponse copyWith(void Function(UpdatePropertyOwnerResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerResponse)) as UpdatePropertyOwnerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerResponse create() => UpdatePropertyOwnerResponse._();
  UpdatePropertyOwnerResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerResponse> createRepeated() => $pb.PbList<UpdatePropertyOwnerResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerResponse>(create);
  static UpdatePropertyOwnerResponse? _defaultInstance;
}

class UpdatePropertyOwnerPasswordRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerPasswordRequest({
    $core.String? hostelHopId,
    $core.String? password,
  }) {
    final $result = create();
    if (hostelHopId != null) {
      $result.hostelHopId = hostelHopId;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  UpdatePropertyOwnerPasswordRequest._() : super();
  factory UpdatePropertyOwnerPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerPasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hostelHopId')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerPasswordRequest clone() => UpdatePropertyOwnerPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerPasswordRequest copyWith(void Function(UpdatePropertyOwnerPasswordRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerPasswordRequest)) as UpdatePropertyOwnerPasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerPasswordRequest create() => UpdatePropertyOwnerPasswordRequest._();
  UpdatePropertyOwnerPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerPasswordRequest> createRepeated() => $pb.PbList<UpdatePropertyOwnerPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerPasswordRequest>(create);
  static UpdatePropertyOwnerPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostelHopId => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostelHopId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostelHopId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostelHopId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class UpdatePropertyOwnerPasswordResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerPasswordResponse() => create();
  UpdatePropertyOwnerPasswordResponse._() : super();
  factory UpdatePropertyOwnerPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerPasswordResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerPasswordResponse clone() => UpdatePropertyOwnerPasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerPasswordResponse copyWith(void Function(UpdatePropertyOwnerPasswordResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerPasswordResponse)) as UpdatePropertyOwnerPasswordResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerPasswordResponse create() => UpdatePropertyOwnerPasswordResponse._();
  UpdatePropertyOwnerPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerPasswordResponse> createRepeated() => $pb.PbList<UpdatePropertyOwnerPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerPasswordResponse>(create);
  static UpdatePropertyOwnerPasswordResponse? _defaultInstance;
}

class UpdatePropertyOwnerEmailResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyOwnerEmailResponse() => create();
  UpdatePropertyOwnerEmailResponse._() : super();
  factory UpdatePropertyOwnerEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyOwnerEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyOwnerEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerEmailResponse clone() => UpdatePropertyOwnerEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyOwnerEmailResponse copyWith(void Function(UpdatePropertyOwnerEmailResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyOwnerEmailResponse)) as UpdatePropertyOwnerEmailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerEmailResponse create() => UpdatePropertyOwnerEmailResponse._();
  UpdatePropertyOwnerEmailResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyOwnerEmailResponse> createRepeated() => $pb.PbList<UpdatePropertyOwnerEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyOwnerEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyOwnerEmailResponse>(create);
  static UpdatePropertyOwnerEmailResponse? _defaultInstance;
}

class PropertyOwner extends $pb.GeneratedMessage {
  factory PropertyOwner({
    $core.String? skyflowId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? hostelHopId,
    $core.String? email,
  }) {
    final $result = create();
    if (skyflowId != null) {
      $result.skyflowId = skyflowId;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (hostelHopId != null) {
      $result.hostelHopId = hostelHopId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  PropertyOwner._() : super();
  factory PropertyOwner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyOwner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyOwner', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'skyflowId')
    ..aOS(2, _omitFieldNames ? '' : 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName')
    ..aOS(4, _omitFieldNames ? '' : 'hostelHopId')
    ..aOS(5, _omitFieldNames ? '' : 'email')
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
  $core.String get skyflowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set skyflowId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkyflowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkyflowId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get hostelHopId => $_getSZ(3);
  @$pb.TagNumber(4)
  set hostelHopId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHostelHopId() => $_has(3);
  @$pb.TagNumber(4)
  void clearHostelHopId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
