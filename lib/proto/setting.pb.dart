// This is a generated file - do not edit.
//
// Generated from setting.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'setting.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'setting.pbenum.dart';

class REQfloat_value extends $pb.GeneratedMessage {
  factory REQfloat_value({
    $core.bool? isOpen,
    float_value_type? type,
    $core.double? value,
  }) {
    final result = create();
    if (isOpen != null) result.isOpen = isOpen;
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  REQfloat_value._();

  factory REQfloat_value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQfloat_value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQfloat_value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aE<float_value_type>(2, _omitFieldNames ? '' : 'type',
        enumValues: float_value_type.values)
    ..aD(3, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQfloat_value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQfloat_value copyWith(void Function(REQfloat_value) updates) =>
      super.copyWith((message) => updates(message as REQfloat_value))
          as REQfloat_value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQfloat_value create() => REQfloat_value._();
  @$core.override
  REQfloat_value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQfloat_value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQfloat_value>(create);
  static REQfloat_value? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOpen => $_getBF(0);
  @$pb.TagNumber(1)
  set isOpen($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOpen() => $_clearField(1);

  @$pb.TagNumber(2)
  float_value_type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(float_value_type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

class REQbool_value extends $pb.GeneratedMessage {
  factory REQbool_value({
    $core.bool? isOpen,
    bool_value_type? type,
  }) {
    final result = create();
    if (isOpen != null) result.isOpen = isOpen;
    if (type != null) result.type = type;
    return result;
  }

  REQbool_value._();

  factory REQbool_value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQbool_value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQbool_value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aE<bool_value_type>(2, _omitFieldNames ? '' : 'type',
        enumValues: bool_value_type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQbool_value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQbool_value copyWith(void Function(REQbool_value) updates) =>
      super.copyWith((message) => updates(message as REQbool_value))
          as REQbool_value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQbool_value create() => REQbool_value._();
  @$core.override
  REQbool_value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQbool_value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQbool_value>(create);
  static REQbool_value? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOpen => $_getBF(0);
  @$pb.TagNumber(1)
  set isOpen($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOpen() => $_clearField(1);

  @$pb.TagNumber(2)
  bool_value_type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(bool_value_type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
