// This is a generated file - do not edit.
//
// Generated from item.proto.

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

@$core.Deprecated('Use itemDescriptor instead')
const item$json = {
  '1': 'item',
  '2': [
    {'1': 'stack', '3': 1, '4': 1, '5': 5, '10': 'stack'},
    {'1': 'maxStack', '3': 2, '4': 1, '5': 5, '10': 'maxStack'},
    {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    {'1': 'damage', '3': 4, '4': 1, '5': 2, '10': 'damage'},
    {'1': 'scale', '3': 5, '4': 1, '5': 2, '10': 'scale'},
    {'1': 'useTime', '3': 6, '4': 1, '5': 5, '10': 'useTime'},
    {'1': 'defense', '3': 7, '4': 1, '5': 5, '10': 'defense'},
    {'1': 'crit', '3': 8, '4': 1, '5': 5, '10': 'crit'},
    {'1': 'knockBack', '3': 9, '4': 1, '5': 2, '10': 'knockBack'},
    {'1': 'shoot', '3': 10, '4': 1, '5': 5, '10': 'shoot'},
    {'1': 'shootSpeed', '3': 11, '4': 1, '5': 2, '10': 'shootSpeed'},
  ],
};

/// Descriptor for `item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRpdGVtEhQKBXN0YWNrGAEgASgFUgVzdGFjaxIaCghtYXhTdGFjaxgCIAEoBVIIbWF4U3RhY2'
    'sSEgoEdHlwZRgDIAEoBVIEdHlwZRIWCgZkYW1hZ2UYBCABKAJSBmRhbWFnZRIUCgVzY2FsZRgF'
    'IAEoAlIFc2NhbGUSGAoHdXNlVGltZRgGIAEoBVIHdXNlVGltZRIYCgdkZWZlbnNlGAcgASgFUg'
    'dkZWZlbnNlEhIKBGNyaXQYCCABKAVSBGNyaXQSHAoJa25vY2tCYWNrGAkgASgCUglrbm9ja0Jh'
    'Y2sSFAoFc2hvb3QYCiABKAVSBXNob290Eh4KCnNob290U3BlZWQYCyABKAJSCnNob290U3BlZW'
    'Q=');

@$core.Deprecated('Use rESitem_namesDescriptor instead')
const RESitem_names$json = {
  '1': 'RESitem_names',
  '2': [
    {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `RESitem_names`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rESitem_namesDescriptor = $convert
    .base64Decode('Cg1SRVNpdGVtX25hbWVzEhQKBW5hbWVzGAEgAygJUgVuYW1lcw==');

@$core.Deprecated('Use rEQset_item_typeDescriptor instead')
const REQset_item_type$json = {
  '1': 'REQset_item_type',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
  ],
};

/// Descriptor for `REQset_item_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rEQset_item_typeDescriptor = $convert.base64Decode(
    'ChBSRVFzZXRfaXRlbV90eXBlEhIKBHR5cGUYASABKAVSBHR5cGUSFAoFaW5kZXgYAiABKAVSBW'
    'luZGV4');

@$core.Deprecated('Use rEQset_item_propertyDescriptor instead')
const REQset_item_property$json = {
  '1': 'REQset_item_property',
  '2': [
    {'1': 'sitem', '3': 1, '4': 1, '5': 11, '6': '.tl.pro.item', '10': 'sitem'},
    {'1': 'index', '3': 2, '4': 1, '5': 5, '10': 'index'},
  ],
};

/// Descriptor for `REQset_item_property`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rEQset_item_propertyDescriptor = $convert.base64Decode(
    'ChRSRVFzZXRfaXRlbV9wcm9wZXJ0eRIiCgVzaXRlbRgBIAEoCzIMLnRsLnByby5pdGVtUgVzaX'
    'RlbRIUCgVpbmRleBgCIAEoBVIFaW5kZXg=');
