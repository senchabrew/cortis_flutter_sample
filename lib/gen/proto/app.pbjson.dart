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

@$core.Deprecated('Use playerDescriptor instead')
const Player$json = {
  '1': 'Player',
  '3': [Player_FCommand$json, Player_UEvent$json],
};

@$core.Deprecated('Use playerDescriptor instead')
const Player_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'inventory', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Inventory.FCommand', '9': 0, '10': 'inventory'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use playerDescriptor instead')
const Player_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'inventory', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Inventory.UEvent', '9': 0, '10': 'inventory'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode(
    'CgZQbGF5ZXIaYAoIRkNvbW1hbmQSSQoJaW52ZW50b3J5GAEgASgLMikuY29ydGlzX2ZsdXR0ZX'
    'Jfc2FtcGxlLkludmVudG9yeS5GQ29tbWFuZEgAUglpbnZlbnRvcnlCCQoHY29tbWFuZBpaCgZV'
    'RXZlbnQSRwoJaW52ZW50b3J5GAEgASgLMicuY29ydGlzX2ZsdXR0ZXJfc2FtcGxlLkludmVudG'
    '9yeS5VRXZlbnRIAFIJaW52ZW50b3J5QgcKBWV2ZW50');

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory$json = {
  '1': 'Inventory',
  '3': [Inventory_FCommand$json, Inventory_UEvent$json],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'add_item', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Inventory.FCommand.AddItem', '9': 0, '10': 'addItem'},
    {'1': 'remove_item', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Inventory.FCommand.RemoveItem', '9': 0, '10': 'removeItem'},
  ],
  '3': [Inventory_FCommand_AddItem$json, Inventory_FCommand_RemoveItem$json],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_FCommand_AddItem$json = {
  '1': 'AddItem',
  '2': [
    {'1': 'item_name', '3': 1, '4': 1, '5': 9, '10': 'itemName'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_FCommand_RemoveItem$json = {
  '1': 'RemoveItem',
  '2': [
    {'1': 'item_name', '3': 1, '4': 1, '5': 9, '10': 'itemName'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'item_list_changed', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Inventory.UEvent.ItemListChanged', '9': 0, '10': 'itemListChanged'},
  ],
  '3': [Inventory_UEvent_ItemListChanged$json],
  '8': [
    {'1': 'event'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_UEvent_ItemListChanged$json = {
  '1': 'ItemListChanged',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `Inventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inventoryDescriptor = $convert.base64Decode(
    'CglJbnZlbnRvcnkakQIKCEZDb21tYW5kEk4KCGFkZF9pdGVtGAEgASgLMjEuY29ydGlzX2ZsdX'
    'R0ZXJfc2FtcGxlLkludmVudG9yeS5GQ29tbWFuZC5BZGRJdGVtSABSB2FkZEl0ZW0SVwoLcmVt'
    'b3ZlX2l0ZW0YAiABKAsyNC5jb3J0aXNfZmx1dHRlcl9zYW1wbGUuSW52ZW50b3J5LkZDb21tYW'
    '5kLlJlbW92ZUl0ZW1IAFIKcmVtb3ZlSXRlbRomCgdBZGRJdGVtEhsKCWl0ZW1fbmFtZRgBIAEo'
    'CVIIaXRlbU5hbWUaKQoKUmVtb3ZlSXRlbRIbCglpdGVtX25hbWUYASABKAlSCGl0ZW1OYW1lQg'
    'kKB2NvbW1hbmQaoQEKBlVFdmVudBJlChFpdGVtX2xpc3RfY2hhbmdlZBgBIAEoCzI3LmNvcnRp'
    'c19mbHV0dGVyX3NhbXBsZS5JbnZlbnRvcnkuVUV2ZW50Lkl0ZW1MaXN0Q2hhbmdlZEgAUg9pdG'
    'VtTGlzdENoYW5nZWQaJwoPSXRlbUxpc3RDaGFuZ2VkEhQKBWl0ZW1zGAEgAygJUgVpdGVtc0IH'
    'CgVldmVudA==');

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '3': [Notification_FCommand$json, Notification_UEvent$json],
};

@$core.Deprecated('Use notificationDescriptor instead')
const Notification_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'dismiss', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.FCommand.Dismiss', '9': 0, '10': 'dismiss'},
  ],
  '3': [Notification_FCommand_Dismiss$json],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use notificationDescriptor instead')
const Notification_FCommand_Dismiss$json = {
  '1': 'Dismiss',
  '2': [
    {'1': 'notification_id', '3': 1, '4': 1, '5': 9, '10': 'notificationId'},
  ],
};

@$core.Deprecated('Use notificationDescriptor instead')
const Notification_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'arrived', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.UEvent.Arrived', '9': 0, '10': 'arrived'},
  ],
  '3': [Notification_UEvent_Arrived$json],
  '8': [
    {'1': 'event'},
  ],
};

@$core.Deprecated('Use notificationDescriptor instead')
const Notification_UEvent_Arrived$json = {
  '1': 'Arrived',
  '2': [
    {'1': 'notification_id', '3': 1, '4': 1, '5': 9, '10': 'notificationId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24amwEKCEZDb21tYW5kElAKB2Rpc21pc3MYASABKAsyNC5jb3J0aXNfZm'
    'x1dHRlcl9zYW1wbGUuTm90aWZpY2F0aW9uLkZDb21tYW5kLkRpc21pc3NIAFIHZGlzbWlzcxoy'
    'CgdEaXNtaXNzEicKD25vdGlmaWNhdGlvbl9pZBgBIAEoCVIObm90aWZpY2F0aW9uSWRCCQoHY2'
    '9tbWFuZBqrAQoGVUV2ZW50Ek4KB2Fycml2ZWQYASABKAsyMi5jb3J0aXNfZmx1dHRlcl9zYW1w'
    'bGUuTm90aWZpY2F0aW9uLlVFdmVudC5BcnJpdmVkSABSB2Fycml2ZWQaSAoHQXJyaXZlZBInCg'
    '9ub3RpZmljYXRpb25faWQYASABKAlSDm5vdGlmaWNhdGlvbklkEhQKBXRpdGxlGAIgASgJUgV0'
    'aXRsZUIHCgVldmVudA==');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '3': [Game_FCommand$json, Game_UEvent$json],
};

@$core.Deprecated('Use gameDescriptor instead')
const Game_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'notification', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.FCommand', '9': 0, '10': 'notification'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use gameDescriptor instead')
const Game_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'notification', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.UEvent', '9': 0, '10': 'notification'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lGmkKCEZDb21tYW5kElIKDG5vdGlmaWNhdGlvbhgBIAEoCzIsLmNvcnRpc19mbHV0dG'
    'VyX3NhbXBsZS5Ob3RpZmljYXRpb24uRkNvbW1hbmRIAFIMbm90aWZpY2F0aW9uQgkKB2NvbW1h'
    'bmQaYwoGVUV2ZW50ElAKDG5vdGlmaWNhdGlvbhgBIAEoCzIqLmNvcnRpc19mbHV0dGVyX3NhbX'
    'BsZS5Ob3RpZmljYXRpb24uVUV2ZW50SABSDG5vdGlmaWNhdGlvbkIHCgVldmVudA==');

@$core.Deprecated('Use adminDescriptor instead')
const Admin$json = {
  '1': 'Admin',
  '3': [Admin_FCommand$json, Admin_UEvent$json],
};

@$core.Deprecated('Use adminDescriptor instead')
const Admin_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'notification', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.FCommand', '9': 0, '10': 'notification'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use adminDescriptor instead')
const Admin_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'notification', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Notification.UEvent', '9': 0, '10': 'notification'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `Admin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminDescriptor = $convert.base64Decode(
    'CgVBZG1pbhppCghGQ29tbWFuZBJSCgxub3RpZmljYXRpb24YASABKAsyLC5jb3J0aXNfZmx1dH'
    'Rlcl9zYW1wbGUuTm90aWZpY2F0aW9uLkZDb21tYW5kSABSDG5vdGlmaWNhdGlvbkIJCgdjb21t'
    'YW5kGmMKBlVFdmVudBJQCgxub3RpZmljYXRpb24YASABKAsyKi5jb3J0aXNfZmx1dHRlcl9zYW'
    '1wbGUuTm90aWZpY2F0aW9uLlVFdmVudEgAUgxub3RpZmljYXRpb25CBwoFZXZlbnQ=');

@$core.Deprecated('Use appDescriptor instead')
const App$json = {
  '1': 'App',
  '3': [App_FCommand$json, App_UEvent$json],
};

@$core.Deprecated('Use appDescriptor instead')
const App_FCommand$json = {
  '1': 'FCommand',
  '2': [
    {'1': 'cube', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.FCommand', '9': 0, '10': 'cube'},
    {'1': 'scene', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scene.FCommand', '9': 0, '10': 'scene'},
    {'1': 'effect', '3': 3, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Effect.FCommand', '9': 0, '10': 'effect'},
    {'1': 'player', '3': 4, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Player.FCommand', '9': 0, '10': 'player'},
    {'1': 'game', '3': 5, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Game.FCommand', '9': 0, '10': 'game'},
    {'1': 'admin', '3': 6, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Admin.FCommand', '9': 0, '10': 'admin'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

@$core.Deprecated('Use appDescriptor instead')
const App_UEvent$json = {
  '1': 'UEvent',
  '2': [
    {'1': 'cube', '3': 1, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Cube.UEvent', '9': 0, '10': 'cube'},
    {'1': 'scene', '3': 2, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Scene.UEvent', '9': 0, '10': 'scene'},
    {'1': 'timer', '3': 3, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Timer.UEvent', '9': 0, '10': 'timer'},
    {'1': 'player', '3': 4, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Player.UEvent', '9': 0, '10': 'player'},
    {'1': 'game', '3': 5, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Game.UEvent', '9': 0, '10': 'game'},
    {'1': 'admin', '3': 6, '4': 1, '5': 11, '6': '.cortis_flutter_sample.Admin.UEvent', '9': 0, '10': 'admin'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `App`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDescriptor = $convert.base64Decode(
    'CgNBcHAajwMKCEZDb21tYW5kEjoKBGN1YmUYASABKAsyJC5jb3J0aXNfZmx1dHRlcl9zYW1wbG'
    'UuQ3ViZS5GQ29tbWFuZEgAUgRjdWJlEj0KBXNjZW5lGAIgASgLMiUuY29ydGlzX2ZsdXR0ZXJf'
    'c2FtcGxlLlNjZW5lLkZDb21tYW5kSABSBXNjZW5lEkAKBmVmZmVjdBgDIAEoCzImLmNvcnRpc1'
    '9mbHV0dGVyX3NhbXBsZS5FZmZlY3QuRkNvbW1hbmRIAFIGZWZmZWN0EkAKBnBsYXllchgEIAEo'
    'CzImLmNvcnRpc19mbHV0dGVyX3NhbXBsZS5QbGF5ZXIuRkNvbW1hbmRIAFIGcGxheWVyEjoKBG'
    'dhbWUYBSABKAsyJC5jb3J0aXNfZmx1dHRlcl9zYW1wbGUuR2FtZS5GQ29tbWFuZEgAUgRnYW1l'
    'Ej0KBWFkbWluGAYgASgLMiUuY29ydGlzX2ZsdXR0ZXJfc2FtcGxlLkFkbWluLkZDb21tYW5kSA'
    'BSBWFkbWluQgkKB2NvbW1hbmQa/AIKBlVFdmVudBI4CgRjdWJlGAEgASgLMiIuY29ydGlzX2Zs'
    'dXR0ZXJfc2FtcGxlLkN1YmUuVUV2ZW50SABSBGN1YmUSOwoFc2NlbmUYAiABKAsyIy5jb3J0aX'
    'NfZmx1dHRlcl9zYW1wbGUuU2NlbmUuVUV2ZW50SABSBXNjZW5lEjsKBXRpbWVyGAMgASgLMiMu'
    'Y29ydGlzX2ZsdXR0ZXJfc2FtcGxlLlRpbWVyLlVFdmVudEgAUgV0aW1lchI+CgZwbGF5ZXIYBC'
    'ABKAsyJC5jb3J0aXNfZmx1dHRlcl9zYW1wbGUuUGxheWVyLlVFdmVudEgAUgZwbGF5ZXISOAoE'
    'Z2FtZRgFIAEoCzIiLmNvcnRpc19mbHV0dGVyX3NhbXBsZS5HYW1lLlVFdmVudEgAUgRnYW1lEj'
    'sKBWFkbWluGAYgASgLMiMuY29ydGlzX2ZsdXR0ZXJfc2FtcGxlLkFkbWluLlVFdmVudEgAUgVh'
    'ZG1pbkIHCgVldmVudA==');

