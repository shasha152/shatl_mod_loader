// This is a generated file - do not edit.
//
// Generated from player.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'player.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'player.pbenum.dart';

class player_max_value extends $pb.GeneratedMessage {
  factory player_max_value({
    $core.bool? isOpen,
    max_value_type? type,
    $core.int? max,
    $core.int? value,
  }) {
    final result = create();
    if (isOpen != null) result.isOpen = isOpen;
    if (type != null) result.type = type;
    if (max != null) result.max = max;
    if (value != null) result.value = value;
    return result;
  }

  player_max_value._();

  factory player_max_value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory player_max_value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'player_max_value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aE<max_value_type>(2, _omitFieldNames ? '' : 'type',
        enumValues: max_value_type.values)
    ..aI(3, _omitFieldNames ? '' : 'max')
    ..aI(4, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  player_max_value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  player_max_value copyWith(void Function(player_max_value) updates) =>
      super.copyWith((message) => updates(message as player_max_value))
          as player_max_value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static player_max_value create() => player_max_value._();
  @$core.override
  player_max_value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static player_max_value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<player_max_value>(create);
  static player_max_value? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOpen => $_getBF(0);
  @$pb.TagNumber(1)
  set isOpen($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOpen() => $_clearField(1);

  @$pb.TagNumber(2)
  max_value_type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(max_value_type value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get max => $_getIZ(2);
  @$pb.TagNumber(3)
  set max($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearMax() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get value => $_getIZ(3);
  @$pb.TagNumber(4)
  set value($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => $_clearField(4);
}

class player_float_value extends $pb.GeneratedMessage {
  factory player_float_value({
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

  player_float_value._();

  factory player_float_value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory player_float_value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'player_float_value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aE<float_value_type>(2, _omitFieldNames ? '' : 'type',
        enumValues: float_value_type.values)
    ..aD(3, _omitFieldNames ? '' : 'value', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  player_float_value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  player_float_value copyWith(void Function(player_float_value) updates) =>
      super.copyWith((message) => updates(message as player_float_value))
          as player_float_value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static player_float_value create() => player_float_value._();
  @$core.override
  player_float_value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static player_float_value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<player_float_value>(create);
  static player_float_value? _defaultInstance;

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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
