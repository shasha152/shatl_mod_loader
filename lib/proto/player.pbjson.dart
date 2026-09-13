// This is a generated file - do not edit.
//
// Generated from player.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use max_value_typeDescriptor instead')
const max_value_type$json = {
  '1': 'max_value_type',
  '2': [
    {'1': 'life', '2': 0},
    {'1': 'mana', '2': 1},
  ],
};

/// Descriptor for `max_value_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List max_value_typeDescriptor =
    $convert.base64Decode('Cg5tYXhfdmFsdWVfdHlwZRIICgRsaWZlEAASCAoEbWFuYRAB');

@$core.Deprecated('Use float_value_typeDescriptor instead')
const float_value_type$json = {
  '1': 'float_value_type',
  '2': [
    {'1': 'speed', '2': 0},
  ],
};

/// Descriptor for `float_value_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List float_value_typeDescriptor =
    $convert.base64Decode('ChBmbG9hdF92YWx1ZV90eXBlEgkKBXNwZWVkEAA=');

@$core.Deprecated('Use player_max_valueDescriptor instead')
const player_max_value$json = {
  '1': 'player_max_value',
  '2': [
    {'1': 'is_open', '3': 1, '4': 1, '5': 8, '10': 'isOpen'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.tl.pro.max_value_type',
      '10': 'type'
    },
    {'1': 'max', '3': 3, '4': 1, '5': 5, '10': 'max'},
    {'1': 'value', '3': 4, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `player_max_value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List player_max_valueDescriptor = $convert.base64Decode(
    'ChBwbGF5ZXJfbWF4X3ZhbHVlEhcKB2lzX29wZW4YASABKAhSBmlzT3BlbhIqCgR0eXBlGAIgAS'
    'gOMhYudGwucHJvLm1heF92YWx1ZV90eXBlUgR0eXBlEhAKA21heBgDIAEoBVIDbWF4EhQKBXZh'
    'bHVlGAQgASgFUgV2YWx1ZQ==');

@$core.Deprecated('Use player_float_valueDescriptor instead')
const player_float_value$json = {
  '1': 'player_float_value',
  '2': [
    {'1': 'is_open', '3': 1, '4': 1, '5': 8, '10': 'isOpen'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.tl.pro.float_value_type',
      '10': 'type'
    },
    {'1': 'value', '3': 3, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `player_float_value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List player_float_valueDescriptor = $convert.base64Decode(
    'ChJwbGF5ZXJfZmxvYXRfdmFsdWUSFwoHaXNfb3BlbhgBIAEoCFIGaXNPcGVuEiwKBHR5cGUYAi'
    'ABKA4yGC50bC5wcm8uZmxvYXRfdmFsdWVfdHlwZVIEdHlwZRIUCgV2YWx1ZRgDIAEoAlIFdmFs'
    'dWU=');
