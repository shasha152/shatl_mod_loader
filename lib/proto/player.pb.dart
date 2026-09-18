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

import 'item.pb.dart' as $0;
import 'player.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'player.pbenum.dart';

class REQplayer_max_value extends $pb.GeneratedMessage {
  factory REQplayer_max_value({
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

  REQplayer_max_value._();

  factory REQplayer_max_value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQplayer_max_value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQplayer_max_value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aE<max_value_type>(2, _omitFieldNames ? '' : 'type',
        enumValues: max_value_type.values)
    ..aI(3, _omitFieldNames ? '' : 'max')
    ..aI(4, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQplayer_max_value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQplayer_max_value copyWith(void Function(REQplayer_max_value) updates) =>
      super.copyWith((message) => updates(message as REQplayer_max_value))
          as REQplayer_max_value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQplayer_max_value create() => REQplayer_max_value._();
  @$core.override
  REQplayer_max_value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQplayer_max_value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQplayer_max_value>(create);
  static REQplayer_max_value? _defaultInstance;

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

class REQplayer_get_bag extends $pb.GeneratedMessage {
  factory REQplayer_get_bag({
    $core.int? playerIndex,
    $core.bool? me,
  }) {
    final result = create();
    if (playerIndex != null) result.playerIndex = playerIndex;
    if (me != null) result.me = me;
    return result;
  }

  REQplayer_get_bag._();

  factory REQplayer_get_bag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQplayer_get_bag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQplayer_get_bag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'playerIndex')
    ..aOB(2, _omitFieldNames ? '' : 'me')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQplayer_get_bag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQplayer_get_bag copyWith(void Function(REQplayer_get_bag) updates) =>
      super.copyWith((message) => updates(message as REQplayer_get_bag))
          as REQplayer_get_bag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQplayer_get_bag create() => REQplayer_get_bag._();
  @$core.override
  REQplayer_get_bag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQplayer_get_bag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQplayer_get_bag>(create);
  static REQplayer_get_bag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerIndex($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlayerIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerIndex() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get me => $_getBF(1);
  @$pb.TagNumber(2)
  set me($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMe() => $_has(1);
  @$pb.TagNumber(2)
  void clearMe() => $_clearField(2);
}

class RESplayer_get_bag extends $pb.GeneratedMessage {
  factory RESplayer_get_bag({
    $core.Iterable<$0.item>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  RESplayer_get_bag._();

  factory RESplayer_get_bag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RESplayer_get_bag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RESplayer_get_bag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..pPM<$0.item>(1, _omitFieldNames ? '' : 'items',
        subBuilder: $0.item.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RESplayer_get_bag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RESplayer_get_bag copyWith(void Function(RESplayer_get_bag) updates) =>
      super.copyWith((message) => updates(message as RESplayer_get_bag))
          as RESplayer_get_bag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RESplayer_get_bag create() => RESplayer_get_bag._();
  @$core.override
  RESplayer_get_bag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RESplayer_get_bag getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RESplayer_get_bag>(create);
  static RESplayer_get_bag? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.item> get items => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
