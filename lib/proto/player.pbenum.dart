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

class max_value_type extends $pb.ProtobufEnum {
  static const max_value_type life =
      max_value_type._(0, _omitEnumNames ? '' : 'life');
  static const max_value_type mana =
      max_value_type._(1, _omitEnumNames ? '' : 'mana');

  static const $core.List<max_value_type> values = <max_value_type>[
    life,
    mana,
  ];

  static final $core.List<max_value_type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static max_value_type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const max_value_type._(super.value, super.name);
}

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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
