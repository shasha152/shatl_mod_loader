// This is a generated file - do not edit.
//
// Generated from multi_player.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class REQauto_aim extends $pb.GeneratedMessage {
  factory REQauto_aim({
    $core.bool? isOpen,
    $core.bool? npc,
    $core.bool? player,
    $core.bool? autoUseAim,
    $core.bool? isAttackFriendly,
  }) {
    final result = create();
    if (isOpen != null) result.isOpen = isOpen;
    if (npc != null) result.npc = npc;
    if (player != null) result.player = player;
    if (autoUseAim != null) result.autoUseAim = autoUseAim;
    if (isAttackFriendly != null) result.isAttackFriendly = isAttackFriendly;
    return result;
  }

  REQauto_aim._();

  factory REQauto_aim.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory REQauto_aim.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'REQauto_aim',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOpen')
    ..aOB(2, _omitFieldNames ? '' : 'npc')
    ..aOB(3, _omitFieldNames ? '' : 'player')
    ..aOB(4, _omitFieldNames ? '' : 'autoUseAim')
    ..aOB(5, _omitFieldNames ? '' : 'isAttackFriendly')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQauto_aim clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  REQauto_aim copyWith(void Function(REQauto_aim) updates) =>
      super.copyWith((message) => updates(message as REQauto_aim))
          as REQauto_aim;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static REQauto_aim create() => REQauto_aim._();
  @$core.override
  REQauto_aim createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static REQauto_aim getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<REQauto_aim>(create);
  static REQauto_aim? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOpen => $_getBF(0);
  @$pb.TagNumber(1)
  set isOpen($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOpen() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get npc => $_getBF(1);
  @$pb.TagNumber(2)
  set npc($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNpc() => $_has(1);
  @$pb.TagNumber(2)
  void clearNpc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get player => $_getBF(2);
  @$pb.TagNumber(3)
  set player($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayer() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get autoUseAim => $_getBF(3);
  @$pb.TagNumber(4)
  set autoUseAim($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAutoUseAim() => $_has(3);
  @$pb.TagNumber(4)
  void clearAutoUseAim() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isAttackFriendly => $_getBF(4);
  @$pb.TagNumber(5)
  set isAttackFriendly($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsAttackFriendly() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAttackFriendly() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
