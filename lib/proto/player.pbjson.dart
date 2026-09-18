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

@$core.Deprecated('Use rEQplayer_max_valueDescriptor instead')
const REQplayer_max_value$json = {
  '1': 'REQplayer_max_value',
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

/// Descriptor for `REQplayer_max_value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rEQplayer_max_valueDescriptor = $convert.base64Decode(
    'ChNSRVFwbGF5ZXJfbWF4X3ZhbHVlEhcKB2lzX29wZW4YASABKAhSBmlzT3BlbhIqCgR0eXBlGA'
    'IgASgOMhYudGwucHJvLm1heF92YWx1ZV90eXBlUgR0eXBlEhAKA21heBgDIAEoBVIDbWF4EhQK'
    'BXZhbHVlGAQgASgFUgV2YWx1ZQ==');

@$core.Deprecated('Use rEQplayer_get_bagDescriptor instead')
const REQplayer_get_bag$json = {
  '1': 'REQplayer_get_bag',
  '2': [
    {
      '1': 'player_index',
      '3': 1,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'playerIndex',
      '17': true
    },
    {'1': 'me', '3': 2, '4': 1, '5': 8, '10': 'me'},
  ],
  '8': [
    {'1': '_player_index'},
  ],
};

/// Descriptor for `REQplayer_get_bag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rEQplayer_get_bagDescriptor = $convert.base64Decode(
    'ChFSRVFwbGF5ZXJfZ2V0X2JhZxImCgxwbGF5ZXJfaW5kZXgYASABKAVIAFILcGxheWVySW5kZX'
    'iIAQESDgoCbWUYAiABKAhSAm1lQg8KDV9wbGF5ZXJfaW5kZXg=');

@$core.Deprecated('Use rESplayer_get_bagDescriptor instead')
const RESplayer_get_bag$json = {
  '1': 'RESplayer_get_bag',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.tl.pro.item', '10': 'items'},
  ],
};

/// Descriptor for `RESplayer_get_bag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rESplayer_get_bagDescriptor = $convert.base64Decode(
    'ChFSRVNwbGF5ZXJfZ2V0X2JhZxIiCgVpdGVtcxgBIAMoCzIMLnRsLnByby5pdGVtUgVpdGVtcw'
    '==');
