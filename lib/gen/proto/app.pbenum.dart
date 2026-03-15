//
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SceneType extends $pb.ProtobufEnum {
  static const SceneType SCENE_UNSPECIFIED = SceneType._(0, _omitEnumNames ? '' : 'SCENE_UNSPECIFIED');
  static const SceneType SCENE_CUBE = SceneType._(1, _omitEnumNames ? '' : 'SCENE_CUBE');
  static const SceneType SCENE_SPHERE = SceneType._(2, _omitEnumNames ? '' : 'SCENE_SPHERE');

  static const $core.List<SceneType> values = <SceneType> [
    SCENE_UNSPECIFIED,
    SCENE_CUBE,
    SCENE_SPHERE,
  ];

  static final $core.Map<$core.int, SceneType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SceneType? valueOf($core.int value) => _byValue[value];

  const SceneType._($core.int v, $core.String n) : super(v, n);
}

class Scene_Phase extends $pb.ProtobufEnum {
  static const Scene_Phase PHASE_UNSPECIFIED = Scene_Phase._(0, _omitEnumNames ? '' : 'PHASE_UNSPECIFIED');
  static const Scene_Phase PHASE_LOADING = Scene_Phase._(1, _omitEnumNames ? '' : 'PHASE_LOADING');
  static const Scene_Phase PHASE_LOADED = Scene_Phase._(2, _omitEnumNames ? '' : 'PHASE_LOADED');

  static const $core.List<Scene_Phase> values = <Scene_Phase> [
    PHASE_UNSPECIFIED,
    PHASE_LOADING,
    PHASE_LOADED,
  ];

  static final $core.Map<$core.int, Scene_Phase> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Scene_Phase? valueOf($core.int value) => _byValue[value];

  const Scene_Phase._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
