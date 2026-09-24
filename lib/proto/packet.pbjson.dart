// This is a generated file - do not edit.
//
// Generated from packet.proto.

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

@$core.Deprecated('Use pk_cmdDescriptor instead')
const pk_cmd$json = {
  '1': 'pk_cmd',
  '2': [
    {'1': 'none', '2': 0},
    {'1': 'cmd_confirm', '2': 100},
    {'1': 'cmd_verify', '2': 101},
    {'1': 'cmd_player_max_value', '2': 1000},
    {'1': 'cmd_player_float_value', '2': 1001},
    {'1': 'cmd_player_bool_value', '2': 1002},
    {'1': 'cmd_player_get_bag', '2': 1100},
    {'1': 'cmd_get_item_name', '2': 1101},
    {'1': 'cmd_set_item_type', '2': 1102},
    {'1': 'cmd_set_item_pro', '2': 1103},
    {'1': 'cmd_grab_world_item', '2': 1200},
  ],
};

/// Descriptor for `pk_cmd`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pk_cmdDescriptor = $convert.base64Decode(
    'CgZwa19jbWQSCAoEbm9uZRAAEg8KC2NtZF9jb25maXJtEGQSDgoKY21kX3ZlcmlmeRBlEhkKFG'
    'NtZF9wbGF5ZXJfbWF4X3ZhbHVlEOgHEhsKFmNtZF9wbGF5ZXJfZmxvYXRfdmFsdWUQ6QcSGgoV'
    'Y21kX3BsYXllcl9ib29sX3ZhbHVlEOoHEhcKEmNtZF9wbGF5ZXJfZ2V0X2JhZxDMCBIWChFjbW'
    'RfZ2V0X2l0ZW1fbmFtZRDNCBIWChFjbWRfc2V0X2l0ZW1fdHlwZRDOCBIVChBjbWRfc2V0X2l0'
    'ZW1fcHJvEM8IEhgKE2NtZF9ncmFiX3dvcmxkX2l0ZW0QsAk=');

@$core.Deprecated('Use packetDescriptor instead')
const packet$json = {
  '1': 'packet',
  '2': [
    {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.tl.pro.pk_cmd', '10': 'cmd'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'data', '17': true},
    {'1': 'seq', '3': 3, '4': 1, '5': 5, '10': 'seq'},
  ],
  '8': [
    {'1': '_data'},
  ],
};

/// Descriptor for `packet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packetDescriptor = $convert.base64Decode(
    'CgZwYWNrZXQSIAoDY21kGAEgASgOMg4udGwucHJvLnBrX2NtZFIDY21kEhcKBGRhdGEYAiABKA'
    'xIAFIEZGF0YYgBARIQCgNzZXEYAyABKAVSA3NlcUIHCgVfZGF0YQ==');

@$core.Deprecated('Use confirmDescriptor instead')
const confirm$json = {
  '1': 'confirm',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'ok', '3': 2, '4': 1, '5': 8, '10': 'ok'},
    {
      '1': 'cmd',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tl.pro.pk_cmd',
      '9': 0,
      '10': 'cmd',
      '17': true
    },
    {'1': 'data', '3': 4, '4': 1, '5': 12, '9': 1, '10': 'data', '17': true},
  ],
  '8': [
    {'1': '_cmd'},
    {'1': '_data'},
  ],
};

/// Descriptor for `confirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmDescriptor = $convert.base64Decode(
    'Cgdjb25maXJtEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USDgoCb2sYAiABKAhSAm9rEiUKA2'
    'NtZBgDIAEoDjIOLnRsLnByby5wa19jbWRIAFIDY21kiAEBEhcKBGRhdGEYBCABKAxIAVIEZGF0'
    'YYgBAUIGCgRfY21kQgcKBV9kYXRh');
