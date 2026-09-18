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

class float_value_type extends $pb.ProtobufEnum {
  static const float_value_type speed =
      float_value_type._(0, _omitEnumNames ? '' : 'speed');

  static const $core.List<float_value_type> values = <float_value_type>[
    speed,
  ];

  static final $core.List<float_value_type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static float_value_type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const float_value_type._(super.value, super.name);
}

class bool_value_type extends $pb.ProtobufEnum {
  static const bool_value_type light_color =
      bool_value_type._(0, _omitEnumNames ? '' : 'light_color');
  static const bool_value_type double_click_teleport =
      bool_value_type._(1, _omitEnumNames ? '' : 'double_click_teleport');

  static const $core.List<bool_value_type> values = <bool_value_type>[
    light_color,
    double_click_teleport,
  ];

  static final $core.List<bool_value_type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static bool_value_type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const bool_value_type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
