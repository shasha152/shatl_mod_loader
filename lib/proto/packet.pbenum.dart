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

class pk_cmd extends $pb.ProtobufEnum {
  static const pk_cmd none = pk_cmd._(0, _omitEnumNames ? '' : 'none');
  static const pk_cmd cmd_confirm =
      pk_cmd._(100, _omitEnumNames ? '' : 'cmd_confirm');
  static const pk_cmd cmd_verify =
      pk_cmd._(101, _omitEnumNames ? '' : 'cmd_verify');
  static const pk_cmd cmd_player_max_value =
      pk_cmd._(1000, _omitEnumNames ? '' : 'cmd_player_max_value');
  static const pk_cmd cmd_player_float_value =
      pk_cmd._(1001, _omitEnumNames ? '' : 'cmd_player_float_value');

  static const $core.List<pk_cmd> values = <pk_cmd>[
    none,
    cmd_confirm,
    cmd_verify,
    cmd_player_max_value,
    cmd_player_float_value,
  ];

  static final $core.Map<$core.int, pk_cmd> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static pk_cmd? valueOf($core.int value) => _byValue[value];

  const pk_cmd._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
