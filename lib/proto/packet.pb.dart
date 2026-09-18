// This is a generated file - do not edit.
//
// Generated from packet.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'packet.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'packet.pbenum.dart';

class packet extends $pb.GeneratedMessage {
  factory packet({
    pk_cmd? cmd,
    $core.List<$core.int>? data,
    $core.int? seq,
  }) {
    final result = create();
    if (cmd != null) result.cmd = cmd;
    if (data != null) result.data = data;
    if (seq != null) result.seq = seq;
    return result;
  }

  packet._();

  factory packet.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory packet.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'packet',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aE<pk_cmd>(1, _omitFieldNames ? '' : 'cmd', enumValues: pk_cmd.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aI(3, _omitFieldNames ? '' : 'seq')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  packet clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  packet copyWith(void Function(packet) updates) =>
      super.copyWith((message) => updates(message as packet)) as packet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static packet create() => packet._();
  @$core.override
  packet createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static packet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<packet>(create);
  static packet? _defaultInstance;

  @$pb.TagNumber(1)
  pk_cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(pk_cmd value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get seq => $_getIZ(2);
  @$pb.TagNumber(3)
  set seq($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSeq() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeq() => $_clearField(3);
}

class confirm extends $pb.GeneratedMessage {
  factory confirm({
    $core.String? message,
    $core.bool? ok,
    pk_cmd? cmd,
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (ok != null) result.ok = ok;
    if (cmd != null) result.cmd = cmd;
    if (data != null) result.data = data;
    return result;
  }

  confirm._();

  factory confirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory confirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'confirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tl.pro'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOB(2, _omitFieldNames ? '' : 'ok')
    ..aE<pk_cmd>(3, _omitFieldNames ? '' : 'cmd', enumValues: pk_cmd.values)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  confirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  confirm copyWith(void Function(confirm) updates) =>
      super.copyWith((message) => updates(message as confirm)) as confirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static confirm create() => confirm._();
  @$core.override
  confirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static confirm getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<confirm>(create);
  static confirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get ok => $_getBF(1);
  @$pb.TagNumber(2)
  set ok($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOk() => $_has(1);
  @$pb.TagNumber(2)
  void clearOk() => $_clearField(2);

  @$pb.TagNumber(3)
  pk_cmd get cmd => $_getN(2);
  @$pb.TagNumber(3)
  set cmd(pk_cmd value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCmd() => $_has(2);
  @$pb.TagNumber(3)
  void clearCmd() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
