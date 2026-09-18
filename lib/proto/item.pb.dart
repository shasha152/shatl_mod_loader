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
    $core.String? name,
  }) {
    final result = create();
    if (stack != null) result.stack = stack;
    if (maxStack != null) result.maxStack = maxStack;
    if (type != null) result.type = type;
    if (name != null) result.name = name;
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
    ..aOS(4, _omitFieldNames ? '' : 'name')
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
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
