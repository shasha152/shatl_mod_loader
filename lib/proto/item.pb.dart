// This is a generated file - do not edit.
//
// Generated from item.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class item extends $pb.GeneratedMessage {
  factory item({
    $core.int? stack,
    $core.int? maxStack,
    $core.int? type,
    $core.double? damage,
    $core.double? scale,
    $core.int? useTime,
    $core.int? defense,
    $core.int? crit,
    $core.double? knockBack,
    $core.int? shoot,
    $core.double? shootSpeed,
  }) {
    final result = create();
    if (stack != null) result.stack = stack;
    if (maxStack != null) result.maxStack = maxStack;
    if (type != null) result.type = type;
    if (damage != null) result.damage = damage;
    if (scale != null) result.scale = scale;
    if (useTime != null) result.useTime = useTime;
    if (defense != null) result.defense = defense;
    if (crit != null) result.crit = crit;
    if (knockBack != null) result.knockBack = knockBack;
    if (shoot != null) result.shoot = shoot;
    if (shootSpeed != null) result.shootSpeed = shootSpeed;
    return result;
  }

  item._();

  factory item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'stack')
    ..aI(2, _omitFieldNames ? '' : 'maxStack', protoName: 'maxStack')
    ..aI(3, _omitFieldNames ? '' : 'type')
    ..aD(4, _omitFieldNames ? '' : 'damage', fieldType: $pb.PbFieldType.OF)
    ..aD(5, _omitFieldNames ? '' : 'scale', fieldType: $pb.PbFieldType.OF)
    ..aI(6, _omitFieldNames ? '' : 'useTime', protoName: 'useTime')
    ..aI(7, _omitFieldNames ? '' : 'defense')
    ..aI(8, _omitFieldNames ? '' : 'crit')
    ..aD(9, _omitFieldNames ? '' : 'knockBack',
        protoName: 'knockBack', fieldType: $pb.PbFieldType.OF)
    ..aI(10, _omitFieldNames ? '' : 'shoot')
    ..aD(11, _omitFieldNames ? '' : 'shootSpeed',
        protoName: 'shootSpeed', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  item copyWith(void Function(item) updates) =>
      super.copyWith((message) => updates(message as item)) as item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static item create() => item._();
  @$core.override
  item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static item getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<item>(create);
  static item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get stack => $_getIZ(0);
  @$pb.TagNumber(1)
  set stack($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStack() => $_has(0);
  @$pb.TagNumber(1)
  void clearStack() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxStack => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxStack($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxStack() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxStack() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get damage => $_getN(3);
  @$pb.TagNumber(4)
  set damage($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDamage() => $_has(3);
  @$pb.TagNumber(4)
  void clearDamage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get scale => $_getN(4);
  @$pb.TagNumber(5)
  set scale($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScale() => $_has(4);
  @$pb.TagNumber(5)
  void clearScale() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get useTime => $_getIZ(5);
  @$pb.TagNumber(6)
  set useTime($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUseTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearUseTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get defense => $_getIZ(6);
  @$pb.TagNumber(7)
  set defense($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDefense() => $_has(6);
  @$pb.TagNumber(7)
  void clearDefense() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get crit => $_getIZ(7);
  @$pb.TagNumber(8)
  set crit($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCrit() => $_has(7);
  @$pb.TagNumber(8)
  void clearCrit() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get knockBack => $_getN(8);
  @$pb.TagNumber(9)
  set knockBack($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasKnockBack() => $_has(8);
  @$pb.TagNumber(9)
  void clearKnockBack() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get shoot => $_getIZ(9);
  @$pb.TagNumber(10)
  set shoot($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasShoot() => $_has(9);
  @$pb.TagNumber(10)
  void clearShoot() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get shootSpeed => $_getN(10);
  @$pb.TagNumber(11)
  set shootSpeed($core.double value) => $_setFloat(10, value);
  @$pb.TagNumber(11)
  $core.bool hasShootSpeed() => $_has(10);
  @$pb.TagNumber(11)
  void clearShootSpeed() => $_clearField(11);
}

class RESitem_names extends $pb.GeneratedMessage {
  factory RESitem_names({
    $core.Iterable<$core.String>? names,
  }) {
    final result = create();
    if (names != null) result.names.addAll(names);
    return result;
  }

  RESitem_names._();

  factory RESitem_names.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RESitem_names.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RESitem_names',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'names')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RESitem_names clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RESitem_names copyWith(void Function(RESitem_names) updates) =>
      super.copyWith((message) => updates(message as RESitem_names))
          as RESitem_names;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RESitem_names create() => RESitem_names._();
  @$core.override
  RESitem_names createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RESitem_names getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RESitem_names>(create);
  static RESitem_names? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get names => $_getList(0);
}

class REQset_item_type extends $pb.GeneratedMessage {
  factory REQset_item_type({
    $core.int? type,
    $core.int? index,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (index != null) result.index = index;
    return result;
  }

  REQset_item_type._();

  factory REQset_item_type.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQset_item_type.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQset_item_type',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aI(2, _omitFieldNames ? '' : 'index')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQset_item_type clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQset_item_type copyWith(void Function(REQset_item_type) updates) =>
      super.copyWith((message) => updates(message as REQset_item_type))
          as REQset_item_type;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQset_item_type create() => REQset_item_type._();
  @$core.override
  REQset_item_type createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQset_item_type getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQset_item_type>(create);
  static REQset_item_type? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => $_clearField(2);
}

class REQset_item_property extends $pb.GeneratedMessage {
  factory REQset_item_property({
    item? sitem,
    $core.int? index,
  }) {
    final result = create();
    if (sitem != null) result.sitem = sitem;
    if (index != null) result.index = index;
    return result;
  }

  REQset_item_property._();

  factory REQset_item_property.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQset_item_property.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQset_item_property',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOM<item>(1, _omitFieldNames ? '' : 'sitem', subBuilder: item.create)
    ..aI(2, _omitFieldNames ? '' : 'index')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQset_item_property clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQset_item_property copyWith(void Function(REQset_item_property) updates) =>
      super.copyWith((message) => updates(message as REQset_item_property))
          as REQset_item_property;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQset_item_property create() => REQset_item_property._();
  @$core.override
  REQset_item_property createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQset_item_property getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQset_item_property>(create);
  static REQset_item_property? _defaultInstance;

  @$pb.TagNumber(1)
  item get sitem => $_getN(0);
  @$pb.TagNumber(1)
  set sitem(item value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSitem() => $_has(0);
  @$pb.TagNumber(1)
  void clearSitem() => $_clearField(1);
  @$pb.TagNumber(1)
  item ensureSitem() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
