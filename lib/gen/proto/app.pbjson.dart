//
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sceneTypeDescriptor instead')
const SceneType$json = {
  '1': 'SceneType',
  '2': [
    {'1': 'SCENE_UNSPECIFIED', '2': 0},
    {'1': 'SCENE_CUBE', '2': 1},
    {'1': 'SCENE_SPHERE', '2': 2},
  ],
};

/// Descriptor for `SceneType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sceneTypeDescriptor = $convert.base64Decode(
    'CglTY2VuZVR5cGUSFQoRU0NFTkVfVU5TUEVDSUZJRUQQABIOCgpTQ0VORV9DVUJFEAESEAoMU0'
    'NFTkVfU1BIRVJFEAI=');

@$core.Deprecated('Use scaleDescriptor instead')
const Scale$json = {
  '1': 'Scale',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
  ],
};

/// Descriptor for `Scale`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleDescriptor = $convert.base64Decode(
    'CgVTY2FsZRIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXkSDAoBehgDIAEoAlIBeg==');

@$core.Deprecated('Use cubeDescriptor instead')
const Cube$json = {
  '1': 'Cube',
  '3': [Cube_FCommand$json, Cube_UEvent$json],
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'set_scale', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.FCommand.SetScale', '9': 0, '10': 'setScale'},
    {'1': 'reset', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.FCommand.Reset', '9': 0, '10': 'reset'},
    {'1': 'jump', '3': 3, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.FCommand.Jump', '9': 0, '10': 'jump'},
  ],
  '3': [Cube_FCommand_SetScale$json, Cube_FCommand_Reset$json, Cube_FCommand_Jump$json],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_FCommand_SetScale$json = {
  '1': 'SetScale',
  '2': [
    {'1': 'scale', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scale', '10': 'scale'},
  ],
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_FCommand_Reset$json = {
  '1': 'Reset',
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_FCommand_Jump$json = {
  '1': 'Jump',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 2, '10': 'height'},
  ],
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'scale_changed', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.UEvent.ScaleChanged', '9': 0, '10': 'scaleChanged'},
  ],
  '3': [Cube_UEvent_ScaleChanged$json],
  '8': [
    {'1': 'event'},
  ],
};

@$core.Deprecated('Use cubeDescriptor instead')
const Cube_UEvent_ScaleChanged$json = {
  '1': 'ScaleChanged',
  '2': [
    {'1': 'scale', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scale', '10': 'scale'},
  ],
};

/// Descriptor for `Cube`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cubeDescriptor = $convert.base64Decode(
    'CgRDdWJlGtECCghGQ29tbWFuZBJMCglzZXRfc2NhbGUYASABKAsyLS5jb3J0aXNfZmx1dHRlcl'
    '9zYW1wbGUuQ3ViZS5GQ29tbWFuZC5TZXRTY2FsZUgAUghzZXRTY2FsZRJCCgVyZXNldBgCIAEo'
    'CzIqLmNvcnRpc19mbHV0dGVyX3NhbXBsZS5DdWJlLkZDb21tYW5kLlJlc2V0SABSBXJlc2V0Ej'
    '8KBGp1bXAYAyABKAsyKS5jb3J0aXNfZmx1dHRlcl9zYW1wbGUuQ3ViZS5GQ29tbWFuZC5KdW1w'
    'SABSBGp1bXAaPgoIU2V0U2NhbGUSMgoFc2NhbGUYASABKAsyHC5jb3J0aXNfZmx1dHRlcl9zYW'
    '1wbGUuU2NhbGVSBXNjYWxlGgcKBVJlc2V0Gh4KBEp1bXASFgoGaGVpZ2h0GAEgASgCUgZoZWln'
    'aHRCCQoHY29tbWFuZBqtAQoGVUV2ZW50ElYKDXNjYWxlX2NoYW5nZWQYASABKAsyLy5jb3J0aX'
    'NfZmx1dHRlcl9zYW1wbGUuQ3ViZS5VRXZlbnQuU2NhbGVDaGFuZ2VkSABSDHNjYWxlQ2hhbmdl'
    'ZBpCCgxTY2FsZUNoYW5nZWQSMgoFc2NhbGUYASABKAsyHC5jb3J0aXNfZmx1dHRlcl9zYW1wbG'
    'UuU2NhbGVSBXNjYWxlQgcKBWV2ZW50');

@$core.Deprecated('Use sceneDescriptor instead')
const Scene$json = {
  '1': 'Scene',
  '3': [Scene_FCommand$json, Scene_UEvent$json],
  '4': [Scene_Phase$json],
};

@$core.Deprecated('Use sceneDescriptor instead')
const Scene_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'load_scene', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scene.FCommand.LoadScene', '9': 0, '10': 'loadScene'},
  ],
  '3': [Scene_FCommand_LoadScene$json],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use sceneDescriptor instead')
const Scene_FCommand_LoadScene$json = {
  '1': 'LoadScene',
  '2': [
    {'1': 'scene', '3': 1, '4': 1, '5': 14, '6': '.cortis_flutter_sample.SceneType', '10': 'scene'},
  ],
};

@$core.Deprecated('Use sceneDescriptor instead')
const Scene_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'phase_changed', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scene.UEvent.PhaseChanged', '9': 0, '10': 'phaseChanged'},
  ],
  '3': [Scene_UEvent_PhaseChanged$json],
  '8': [
    {'1': 'event'},
  ],
};

@$core.Deprecated('Use sceneDescriptor instead')
const Scene_UEvent_PhaseChanged$json = {
  '1': 'PhaseChanged',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 14, '6': '.cortis_flutter_sample.Scene.Phase', '10': 'phase'},
  ],
};

@$core.Deprecated('Use sceneDescriptor instead')
const Scene_Phase$json = {
  '1': 'Phase',
  '2': [
    {'1': 'PHASE_UNSPECIFIED', '2': 0},
    {'1': 'PHASE_LOADING', '2': 1},
    {'1': 'PHASE_LOADED', '2': 2},
  ],
};

/// Descriptor for `Scene`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sceneDescriptor = $convert.base64Decode(
    'CgVTY2VuZRqsAQoIRkNvbW1hbmQSUAoKbG9hZF9zY2VuZRgBIAEoCzIvLmNvcnRpc19mbHV0dG'
    'VyX3NhbXBsZS5TY2VuZS5GQ29tbWFuZC5Mb2FkU2NlbmVIAFIJbG9hZFNjZW5lGkMKCUxvYWRT'
    'Y2VuZRI2CgVzY2VuZRgBIAEoDjIgLmNvcnRpc19mbHV0dGVyX3NhbXBsZS5TY2VuZVR5cGVSBX'
    'NjZW5lQgkKB2NvbW1hbmQatAEKBlVFdmVudBJXCg1waGFzZV9jaGFuZ2VkGAEgASgLMjAuY29y'
    'dGlzX2ZsdXR0ZXJfc2FtcGxlLlNjZW5lLlVFdmVudC5QaGFzZUNoYW5nZWRIAFIMcGhhc2VDaG'
    'FuZ2VkGkgKDFBoYXNlQ2hhbmdlZBI4CgVwaGFzZRgBIAEoDjIiLmNvcnRpc19mbHV0dGVyX3Nh'
    'bXBsZS5TY2VuZS5QaGFzZVIFcGhhc2VCBwoFZXZlbnQiQwoFUGhhc2USFQoRUEhBU0VfVU5TUE'
    'VDSUZJRUQQABIRCg1QSEFTRV9MT0FESU5HEAESEAoMUEhBU0VfTE9BREVEEAI=');

@$core.Deprecated('Use effectDescriptor instead')
const Effect$json = {
  '1': 'Effect',
  '3': [Effect_FCommand$json],
};

@$core.Deprecated('Use effectDescriptor instead')
const Effect_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'play_sound', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Effect.FCommand.PlaySound', '9': 0, '10': 'playSound'},
    {'1': 'vibrate', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Effect.FCommand.Vibrate', '9': 0, '10': 'vibrate'},
  ],
  '3': [Effect_FCommand_PlaySound$json, Effect_FCommand_Vibrate$json],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use effectDescriptor instead')
const Effect_FCommand_PlaySound$json = {
  '1': 'PlaySound',
  '2': [
    {'1': 'sound_name', '3': 1, '4': 1, '5': 9, '10': 'soundName'},
  ],
};

@$core.Deprecated('Use effectDescriptor instead')
const Effect_FCommand_Vibrate$json = {
  '1': 'Vibrate',
  '2': [
    {'1': 'duration', '3': 1, '4': 1, '5': 2, '10': 'duration'},
  ],
};

/// Descriptor for `Effect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List effectDescriptor = $convert.base64Decode(
    'CgZFZmZlY3QahwIKCEZDb21tYW5kElEKCnBsYXlfc291bmQYASABKAsyMC5jb3J0aXNfZmx1dH'
    'Rlcl9zYW1wbGUuRWZmZWN0LkZDb21tYW5kLlBsYXlTb3VuZEgAUglwbGF5U291bmQSSgoHdmli'
    'cmF0ZRgCIAEoCzIuLmNvcnRpc19mbHV0dGVyX3NhbXBsZS5FZmZlY3QuRkNvbW1hbmQuVmlicm'
    'F0ZUgAUgd2aWJyYXRlGioKCVBsYXlTb3VuZBIdCgpzb3VuZF9uYW1lGAEgASgJUglzb3VuZE5h'
    'bWUaJQoHVmlicmF0ZRIaCghkdXJhdGlvbhgBIAEoAlIIZHVyYXRpb25CCQoHY29tbWFuZA==');

@$core.Deprecated('Use timerDescriptor instead')
const Timer$json = {
  '1': 'Timer',
  '3': [Timer_UEvent$json],
};

@$core.Deprecated('Use timerDescriptor instead')
const Timer_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'tick', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Timer.UEvent.Tick', '9': 0, '10': 'tick'},
    {'1': 'milestone', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Timer.UEvent.Milestone', '9': 0, '10': 'milestone'},
  ],
  '3': [Timer_UEvent_Tick$json, Timer_UEvent_Milestone$json],
  '8': [
    {'1': 'event'},
  ],
};

@$core.Deprecated('Use timerDescriptor instead')
const Timer_UEvent_Tick$json = {
  '1': 'Tick',
  '2': [
    {'1': 'elapsed', '3': 1, '4': 1, '5': 2, '10': 'elapsed'},
  ],
};

@$core.Deprecated('Use timerDescriptor instead')
const Timer_UEvent_Milestone$json = {
  '1': 'Milestone',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `Timer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timerDescriptor = $convert.base64Decode(
    'CgVUaW1lchrlAQoGVUV2ZW50Ej4KBHRpY2sYASABKAsyKC5jb3J0aXNfZmx1dHRlcl9zYW1wbG'
    'UuVGltZXIuVUV2ZW50LlRpY2tIAFIEdGljaxJNCgltaWxlc3RvbmUYAiABKAsyLS5jb3J0aXNf'
    'Zmx1dHRlcl9zYW1wbGUuVGltZXIuVUV2ZW50Lk1pbGVzdG9uZUgAUgltaWxlc3RvbmUaIAoEVG'
    'ljaxIYCgdlbGFwc2VkGAEgASgCUgdlbGFwc2VkGiEKCU1pbGVzdG9uZRIUCgVjb3VudBgBIAEo'
    'BVIFY291bnRCBwoFZXZlbnQ=');

