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
  static const pk_cmd cmd_player_bool_value =
      pk_cmd._(1002, _omitEnumNames ? '' : 'cmd_player_bool_value');
  static const pk_cmd cmd_player_get_bag =
      pk_cmd._(1100, _omitEnumNames ? '' : 'cmd_player_get_bag');
  static const pk_cmd cmd_get_item_name =
      pk_cmd._(1101, _omitEnumNames ? '' : 'cmd_get_item_name');
  static const pk_cmd cmd_set_item_type =
      pk_cmd._(1102, _omitEnumNames ? '' : 'cmd_set_item_type');
  static const pk_cmd cmd_set_item_pro =
      pk_cmd._(1103, _omitEnumNames ? '' : 'cmd_set_item_pro');
  static const pk_cmd cmd_grab_world_item =
      pk_cmd._(1200, _omitEnumNames ? '' : 'cmd_grab_world_item');

  static const $core.List<pk_cmd> values = <pk_cmd>[
    none,
    cmd_confirm,
    cmd_verify,
    cmd_player_max_value,
    cmd_player_float_value,
    cmd_player_bool_value,
    cmd_player_get_bag,
    cmd_get_item_name,
    cmd_set_item_type,
    cmd_set_item_pro,
    cmd_grab_world_item,
  ];

  static final $core.Map<$core.int, pk_cmd> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static pk_cmd? valueOf($core.int value) => _byValue[value];

  const pk_cmd._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
