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

import 'app.pbenum.dart';

export 'app.pbenum.dart';

class Scale extends $pb.GeneratedMessage {
  factory Scale({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    return $result;
  }
  Scale._() : super();
  factory Scale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scale', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scale clone() => Scale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scale copyWith(void Function(Scale) updates) => super.copyWith((message) => updates(message as Scale)) as Scale;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scale create() => Scale._();
  Scale createEmptyInstance() => create();
  static $pb.PbList<Scale> createRepeated() => $pb.PbList<Scale>();
  @$core.pragma('dart2js:noInline')
  static Scale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scale>(create);
  static Scale? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class Cube_FCommand_SetScale extends $pb.GeneratedMessage {
  factory Cube_FCommand_SetScale({
    Scale? scale,
  }) {
    final $result = create();
    if (scale != null) {
      $result.scale = scale;
    }
    return $result;
  }
  Cube_FCommand_SetScale._() : super();
  factory Cube_FCommand_SetScale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_FCommand_SetScale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.FCommand.SetScale', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOM<Scale>(1, _omitFieldNames ? '' : 'scale', subBuilder: Scale.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_FCommand_SetScale clone() => Cube_FCommand_SetScale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_FCommand_SetScale copyWith(void Function(Cube_FCommand_SetScale) updates) => super.copyWith((message) => updates(message as Cube_FCommand_SetScale)) as Cube_FCommand_SetScale;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_SetScale create() => Cube_FCommand_SetScale._();
  Cube_FCommand_SetScale createEmptyInstance() => create();
  static $pb.PbList<Cube_FCommand_SetScale> createRepeated() => $pb.PbList<Cube_FCommand_SetScale>();
  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_SetScale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_FCommand_SetScale>(create);
  static Cube_FCommand_SetScale? _defaultInstance;

  @$pb.TagNumber(1)
  Scale get scale => $_getN(0);
  @$pb.TagNumber(1)
  set scale(Scale v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScale() => $_has(0);
  @$pb.TagNumber(1)
  void clearScale() => clearField(1);
  @$pb.TagNumber(1)
  Scale ensureScale() => $_ensure(0);
}

class Cube_FCommand_Reset extends $pb.GeneratedMessage {
  factory Cube_FCommand_Reset() => create();
  Cube_FCommand_Reset._() : super();
  factory Cube_FCommand_Reset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_FCommand_Reset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.FCommand.Reset', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_FCommand_Reset clone() => Cube_FCommand_Reset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_FCommand_Reset copyWith(void Function(Cube_FCommand_Reset) updates) => super.copyWith((message) => updates(message as Cube_FCommand_Reset)) as Cube_FCommand_Reset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_Reset create() => Cube_FCommand_Reset._();
  Cube_FCommand_Reset createEmptyInstance() => create();
  static $pb.PbList<Cube_FCommand_Reset> createRepeated() => $pb.PbList<Cube_FCommand_Reset>();
  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_Reset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_FCommand_Reset>(create);
  static Cube_FCommand_Reset? _defaultInstance;
}

class Cube_FCommand_Jump extends $pb.GeneratedMessage {
  factory Cube_FCommand_Jump({
    $core.double? height,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  Cube_FCommand_Jump._() : super();
  factory Cube_FCommand_Jump.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_FCommand_Jump.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.FCommand.Jump', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_FCommand_Jump clone() => Cube_FCommand_Jump()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_FCommand_Jump copyWith(void Function(Cube_FCommand_Jump) updates) => super.copyWith((message) => updates(message as Cube_FCommand_Jump)) as Cube_FCommand_Jump;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_Jump create() => Cube_FCommand_Jump._();
  Cube_FCommand_Jump createEmptyInstance() => create();
  static $pb.PbList<Cube_FCommand_Jump> createRepeated() => $pb.PbList<Cube_FCommand_Jump>();
  @$core.pragma('dart2js:noInline')
  static Cube_FCommand_Jump getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_FCommand_Jump>(create);
  static Cube_FCommand_Jump? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get height => $_getN(0);
  @$pb.TagNumber(1)
  set height($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);
}

enum Cube_FCommand_Command {
  setScale, 
  reset, 
  jump, 
  notSet
}

class Cube_FCommand extends $pb.GeneratedMessage {
  factory Cube_FCommand({
    Cube_FCommand_SetScale? setScale,
    Cube_FCommand_Reset? reset,
    Cube_FCommand_Jump? jump,
  }) {
    final $result = create();
    if (setScale != null) {
      $result.setScale = setScale;
    }
    if (reset != null) {
      $result.reset = reset;
    }
    if (jump != null) {
      $result.jump = jump;
    }
    return $result;
  }
  Cube_FCommand._() : super();
  factory Cube_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Cube_FCommand_Command> _Cube_FCommand_CommandByTag = {
    1 : Cube_FCommand_Command.setScale,
    2 : Cube_FCommand_Command.reset,
    3 : Cube_FCommand_Command.jump,
    0 : Cube_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<Cube_FCommand_SetScale>(1, _omitFieldNames ? '' : 'setScale', subBuilder: Cube_FCommand_SetScale.create)
    ..aOM<Cube_FCommand_Reset>(2, _omitFieldNames ? '' : 'reset', subBuilder: Cube_FCommand_Reset.create)
    ..aOM<Cube_FCommand_Jump>(3, _omitFieldNames ? '' : 'jump', subBuilder: Cube_FCommand_Jump.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_FCommand clone() => Cube_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_FCommand copyWith(void Function(Cube_FCommand) updates) => super.copyWith((message) => updates(message as Cube_FCommand)) as Cube_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_FCommand create() => Cube_FCommand._();
  Cube_FCommand createEmptyInstance() => create();
  static $pb.PbList<Cube_FCommand> createRepeated() => $pb.PbList<Cube_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Cube_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_FCommand>(create);
  static Cube_FCommand? _defaultInstance;

  Cube_FCommand_Command whichCommand() => _Cube_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Cube_FCommand_SetScale get setScale => $_getN(0);
  @$pb.TagNumber(1)
  set setScale(Cube_FCommand_SetScale v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetScale() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetScale() => clearField(1);
  @$pb.TagNumber(1)
  Cube_FCommand_SetScale ensureSetScale() => $_ensure(0);

  @$pb.TagNumber(2)
  Cube_FCommand_Reset get reset => $_getN(1);
  @$pb.TagNumber(2)
  set reset(Cube_FCommand_Reset v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReset() => $_has(1);
  @$pb.TagNumber(2)
  void clearReset() => clearField(2);
  @$pb.TagNumber(2)
  Cube_FCommand_Reset ensureReset() => $_ensure(1);

  @$pb.TagNumber(3)
  Cube_FCommand_Jump get jump => $_getN(2);
  @$pb.TagNumber(3)
  set jump(Cube_FCommand_Jump v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasJump() => $_has(2);
  @$pb.TagNumber(3)
  void clearJump() => clearField(3);
  @$pb.TagNumber(3)
  Cube_FCommand_Jump ensureJump() => $_ensure(2);
}

class Cube_UEvent_ScaleChanged extends $pb.GeneratedMessage {
  factory Cube_UEvent_ScaleChanged({
    Scale? scale,
  }) {
    final $result = create();
    if (scale != null) {
      $result.scale = scale;
    }
    return $result;
  }
  Cube_UEvent_ScaleChanged._() : super();
  factory Cube_UEvent_ScaleChanged.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_UEvent_ScaleChanged.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.UEvent.ScaleChanged', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOM<Scale>(1, _omitFieldNames ? '' : 'scale', subBuilder: Scale.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_UEvent_ScaleChanged clone() => Cube_UEvent_ScaleChanged()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_UEvent_ScaleChanged copyWith(void Function(Cube_UEvent_ScaleChanged) updates) => super.copyWith((message) => updates(message as Cube_UEvent_ScaleChanged)) as Cube_UEvent_ScaleChanged;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_UEvent_ScaleChanged create() => Cube_UEvent_ScaleChanged._();
  Cube_UEvent_ScaleChanged createEmptyInstance() => create();
  static $pb.PbList<Cube_UEvent_ScaleChanged> createRepeated() => $pb.PbList<Cube_UEvent_ScaleChanged>();
  @$core.pragma('dart2js:noInline')
  static Cube_UEvent_ScaleChanged getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_UEvent_ScaleChanged>(create);
  static Cube_UEvent_ScaleChanged? _defaultInstance;

  @$pb.TagNumber(1)
  Scale get scale => $_getN(0);
  @$pb.TagNumber(1)
  set scale(Scale v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScale() => $_has(0);
  @$pb.TagNumber(1)
  void clearScale() => clearField(1);
  @$pb.TagNumber(1)
  Scale ensureScale() => $_ensure(0);
}

enum Cube_UEvent_Event {
  scaleChanged, 
  notSet
}

class Cube_UEvent extends $pb.GeneratedMessage {
  factory Cube_UEvent({
    Cube_UEvent_ScaleChanged? scaleChanged,
  }) {
    final $result = create();
    if (scaleChanged != null) {
      $result.scaleChanged = scaleChanged;
    }
    return $result;
  }
  Cube_UEvent._() : super();
  factory Cube_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Cube_UEvent_Event> _Cube_UEvent_EventByTag = {
    1 : Cube_UEvent_Event.scaleChanged,
    0 : Cube_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Cube_UEvent_ScaleChanged>(1, _omitFieldNames ? '' : 'scaleChanged', subBuilder: Cube_UEvent_ScaleChanged.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube_UEvent clone() => Cube_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube_UEvent copyWith(void Function(Cube_UEvent) updates) => super.copyWith((message) => updates(message as Cube_UEvent)) as Cube_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube_UEvent create() => Cube_UEvent._();
  Cube_UEvent createEmptyInstance() => create();
  static $pb.PbList<Cube_UEvent> createRepeated() => $pb.PbList<Cube_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Cube_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube_UEvent>(create);
  static Cube_UEvent? _defaultInstance;

  Cube_UEvent_Event whichEvent() => _Cube_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Cube_UEvent_ScaleChanged get scaleChanged => $_getN(0);
  @$pb.TagNumber(1)
  set scaleChanged(Cube_UEvent_ScaleChanged v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScaleChanged() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaleChanged() => clearField(1);
  @$pb.TagNumber(1)
  Cube_UEvent_ScaleChanged ensureScaleChanged() => $_ensure(0);
}

/// Command+Event パターン: Flutter → Unity のコマンド送信 + Unity → Flutter のイベント受信
class Cube extends $pb.GeneratedMessage {
  factory Cube() => create();
  Cube._() : super();
  factory Cube.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cube.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cube', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cube clone() => Cube()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cube copyWith(void Function(Cube) updates) => super.copyWith((message) => updates(message as Cube)) as Cube;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cube create() => Cube._();
  Cube createEmptyInstance() => create();
  static $pb.PbList<Cube> createRepeated() => $pb.PbList<Cube>();
  @$core.pragma('dart2js:noInline')
  static Cube getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cube>(create);
  static Cube? _defaultInstance;
}

class Scene_FCommand_LoadScene extends $pb.GeneratedMessage {
  factory Scene_FCommand_LoadScene({
    SceneType? scene,
  }) {
    final $result = create();
    if (scene != null) {
      $result.scene = scene;
    }
    return $result;
  }
  Scene_FCommand_LoadScene._() : super();
  factory Scene_FCommand_LoadScene.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scene_FCommand_LoadScene.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scene.FCommand.LoadScene', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..e<SceneType>(1, _omitFieldNames ? '' : 'scene', $pb.PbFieldType.OE, defaultOrMaker: SceneType.SCENE_UNSPECIFIED, valueOf: SceneType.valueOf, enumValues: SceneType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scene_FCommand_LoadScene clone() => Scene_FCommand_LoadScene()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scene_FCommand_LoadScene copyWith(void Function(Scene_FCommand_LoadScene) updates) => super.copyWith((message) => updates(message as Scene_FCommand_LoadScene)) as Scene_FCommand_LoadScene;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene_FCommand_LoadScene create() => Scene_FCommand_LoadScene._();
  Scene_FCommand_LoadScene createEmptyInstance() => create();
  static $pb.PbList<Scene_FCommand_LoadScene> createRepeated() => $pb.PbList<Scene_FCommand_LoadScene>();
  @$core.pragma('dart2js:noInline')
  static Scene_FCommand_LoadScene getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene_FCommand_LoadScene>(create);
  static Scene_FCommand_LoadScene? _defaultInstance;

  @$pb.TagNumber(1)
  SceneType get scene => $_getN(0);
  @$pb.TagNumber(1)
  set scene(SceneType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScene() => $_has(0);
  @$pb.TagNumber(1)
  void clearScene() => clearField(1);
}

enum Scene_FCommand_Command {
  loadScene, 
  notSet
}

class Scene_FCommand extends $pb.GeneratedMessage {
  factory Scene_FCommand({
    Scene_FCommand_LoadScene? loadScene,
  }) {
    final $result = create();
    if (loadScene != null) {
      $result.loadScene = loadScene;
    }
    return $result;
  }
  Scene_FCommand._() : super();
  factory Scene_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scene_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Scene_FCommand_Command> _Scene_FCommand_CommandByTag = {
    1 : Scene_FCommand_Command.loadScene,
    0 : Scene_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scene.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Scene_FCommand_LoadScene>(1, _omitFieldNames ? '' : 'loadScene', subBuilder: Scene_FCommand_LoadScene.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scene_FCommand clone() => Scene_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scene_FCommand copyWith(void Function(Scene_FCommand) updates) => super.copyWith((message) => updates(message as Scene_FCommand)) as Scene_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene_FCommand create() => Scene_FCommand._();
  Scene_FCommand createEmptyInstance() => create();
  static $pb.PbList<Scene_FCommand> createRepeated() => $pb.PbList<Scene_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Scene_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene_FCommand>(create);
  static Scene_FCommand? _defaultInstance;

  Scene_FCommand_Command whichCommand() => _Scene_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Scene_FCommand_LoadScene get loadScene => $_getN(0);
  @$pb.TagNumber(1)
  set loadScene(Scene_FCommand_LoadScene v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadScene() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadScene() => clearField(1);
  @$pb.TagNumber(1)
  Scene_FCommand_LoadScene ensureLoadScene() => $_ensure(0);
}

class Scene_UEvent_PhaseChanged extends $pb.GeneratedMessage {
  factory Scene_UEvent_PhaseChanged({
    Scene_Phase? phase,
  }) {
    final $result = create();
    if (phase != null) {
      $result.phase = phase;
    }
    return $result;
  }
  Scene_UEvent_PhaseChanged._() : super();
  factory Scene_UEvent_PhaseChanged.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scene_UEvent_PhaseChanged.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scene.UEvent.PhaseChanged', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..e<Scene_Phase>(1, _omitFieldNames ? '' : 'phase', $pb.PbFieldType.OE, defaultOrMaker: Scene_Phase.PHASE_UNSPECIFIED, valueOf: Scene_Phase.valueOf, enumValues: Scene_Phase.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scene_UEvent_PhaseChanged clone() => Scene_UEvent_PhaseChanged()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scene_UEvent_PhaseChanged copyWith(void Function(Scene_UEvent_PhaseChanged) updates) => super.copyWith((message) => updates(message as Scene_UEvent_PhaseChanged)) as Scene_UEvent_PhaseChanged;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene_UEvent_PhaseChanged create() => Scene_UEvent_PhaseChanged._();
  Scene_UEvent_PhaseChanged createEmptyInstance() => create();
  static $pb.PbList<Scene_UEvent_PhaseChanged> createRepeated() => $pb.PbList<Scene_UEvent_PhaseChanged>();
  @$core.pragma('dart2js:noInline')
  static Scene_UEvent_PhaseChanged getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene_UEvent_PhaseChanged>(create);
  static Scene_UEvent_PhaseChanged? _defaultInstance;

  @$pb.TagNumber(1)
  Scene_Phase get phase => $_getN(0);
  @$pb.TagNumber(1)
  set phase(Scene_Phase v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhase() => clearField(1);
}

enum Scene_UEvent_Event {
  phaseChanged, 
  notSet
}

class Scene_UEvent extends $pb.GeneratedMessage {
  factory Scene_UEvent({
    Scene_UEvent_PhaseChanged? phaseChanged,
  }) {
    final $result = create();
    if (phaseChanged != null) {
      $result.phaseChanged = phaseChanged;
    }
    return $result;
  }
  Scene_UEvent._() : super();
  factory Scene_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scene_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Scene_UEvent_Event> _Scene_UEvent_EventByTag = {
    1 : Scene_UEvent_Event.phaseChanged,
    0 : Scene_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scene.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Scene_UEvent_PhaseChanged>(1, _omitFieldNames ? '' : 'phaseChanged', subBuilder: Scene_UEvent_PhaseChanged.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scene_UEvent clone() => Scene_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scene_UEvent copyWith(void Function(Scene_UEvent) updates) => super.copyWith((message) => updates(message as Scene_UEvent)) as Scene_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene_UEvent create() => Scene_UEvent._();
  Scene_UEvent createEmptyInstance() => create();
  static $pb.PbList<Scene_UEvent> createRepeated() => $pb.PbList<Scene_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Scene_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene_UEvent>(create);
  static Scene_UEvent? _defaultInstance;

  Scene_UEvent_Event whichEvent() => _Scene_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Scene_UEvent_PhaseChanged get phaseChanged => $_getN(0);
  @$pb.TagNumber(1)
  set phaseChanged(Scene_UEvent_PhaseChanged v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhaseChanged() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhaseChanged() => clearField(1);
  @$pb.TagNumber(1)
  Scene_UEvent_PhaseChanged ensurePhaseChanged() => $_ensure(0);
}

/// Command+Event パターン (非同期): Flutter → Unity のコマンド送信 + Unity → Flutter の状態通知
class Scene extends $pb.GeneratedMessage {
  factory Scene() => create();
  Scene._() : super();
  factory Scene.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scene.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scene', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scene clone() => Scene()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scene copyWith(void Function(Scene) updates) => super.copyWith((message) => updates(message as Scene)) as Scene;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scene create() => Scene._();
  Scene createEmptyInstance() => create();
  static $pb.PbList<Scene> createRepeated() => $pb.PbList<Scene>();
  @$core.pragma('dart2js:noInline')
  static Scene getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scene>(create);
  static Scene? _defaultInstance;
}

class Effect_FCommand_PlaySound extends $pb.GeneratedMessage {
  factory Effect_FCommand_PlaySound({
    $core.String? soundName,
  }) {
    final $result = create();
    if (soundName != null) {
      $result.soundName = soundName;
    }
    return $result;
  }
  Effect_FCommand_PlaySound._() : super();
  factory Effect_FCommand_PlaySound.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Effect_FCommand_PlaySound.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Effect.FCommand.PlaySound', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'soundName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Effect_FCommand_PlaySound clone() => Effect_FCommand_PlaySound()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Effect_FCommand_PlaySound copyWith(void Function(Effect_FCommand_PlaySound) updates) => super.copyWith((message) => updates(message as Effect_FCommand_PlaySound)) as Effect_FCommand_PlaySound;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effect_FCommand_PlaySound create() => Effect_FCommand_PlaySound._();
  Effect_FCommand_PlaySound createEmptyInstance() => create();
  static $pb.PbList<Effect_FCommand_PlaySound> createRepeated() => $pb.PbList<Effect_FCommand_PlaySound>();
  @$core.pragma('dart2js:noInline')
  static Effect_FCommand_PlaySound getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effect_FCommand_PlaySound>(create);
  static Effect_FCommand_PlaySound? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get soundName => $_getSZ(0);
  @$pb.TagNumber(1)
  set soundName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSoundName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSoundName() => clearField(1);
}

class Effect_FCommand_Vibrate extends $pb.GeneratedMessage {
  factory Effect_FCommand_Vibrate({
    $core.double? duration,
  }) {
    final $result = create();
    if (duration != null) {
      $result.duration = duration;
    }
    return $result;
  }
  Effect_FCommand_Vibrate._() : super();
  factory Effect_FCommand_Vibrate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Effect_FCommand_Vibrate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Effect.FCommand.Vibrate', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'duration', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Effect_FCommand_Vibrate clone() => Effect_FCommand_Vibrate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Effect_FCommand_Vibrate copyWith(void Function(Effect_FCommand_Vibrate) updates) => super.copyWith((message) => updates(message as Effect_FCommand_Vibrate)) as Effect_FCommand_Vibrate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effect_FCommand_Vibrate create() => Effect_FCommand_Vibrate._();
  Effect_FCommand_Vibrate createEmptyInstance() => create();
  static $pb.PbList<Effect_FCommand_Vibrate> createRepeated() => $pb.PbList<Effect_FCommand_Vibrate>();
  @$core.pragma('dart2js:noInline')
  static Effect_FCommand_Vibrate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effect_FCommand_Vibrate>(create);
  static Effect_FCommand_Vibrate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get duration => $_getN(0);
  @$pb.TagNumber(1)
  set duration($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => clearField(1);
}

enum Effect_FCommand_Command {
  playSound, 
  vibrate, 
  notSet
}

class Effect_FCommand extends $pb.GeneratedMessage {
  factory Effect_FCommand({
    Effect_FCommand_PlaySound? playSound,
    Effect_FCommand_Vibrate? vibrate,
  }) {
    final $result = create();
    if (playSound != null) {
      $result.playSound = playSound;
    }
    if (vibrate != null) {
      $result.vibrate = vibrate;
    }
    return $result;
  }
  Effect_FCommand._() : super();
  factory Effect_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Effect_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Effect_FCommand_Command> _Effect_FCommand_CommandByTag = {
    1 : Effect_FCommand_Command.playSound,
    2 : Effect_FCommand_Command.vibrate,
    0 : Effect_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Effect.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Effect_FCommand_PlaySound>(1, _omitFieldNames ? '' : 'playSound', subBuilder: Effect_FCommand_PlaySound.create)
    ..aOM<Effect_FCommand_Vibrate>(2, _omitFieldNames ? '' : 'vibrate', subBuilder: Effect_FCommand_Vibrate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Effect_FCommand clone() => Effect_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Effect_FCommand copyWith(void Function(Effect_FCommand) updates) => super.copyWith((message) => updates(message as Effect_FCommand)) as Effect_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effect_FCommand create() => Effect_FCommand._();
  Effect_FCommand createEmptyInstance() => create();
  static $pb.PbList<Effect_FCommand> createRepeated() => $pb.PbList<Effect_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Effect_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effect_FCommand>(create);
  static Effect_FCommand? _defaultInstance;

  Effect_FCommand_Command whichCommand() => _Effect_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Effect_FCommand_PlaySound get playSound => $_getN(0);
  @$pb.TagNumber(1)
  set playSound(Effect_FCommand_PlaySound v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaySound() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaySound() => clearField(1);
  @$pb.TagNumber(1)
  Effect_FCommand_PlaySound ensurePlaySound() => $_ensure(0);

  @$pb.TagNumber(2)
  Effect_FCommand_Vibrate get vibrate => $_getN(1);
  @$pb.TagNumber(2)
  set vibrate(Effect_FCommand_Vibrate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVibrate() => $_has(1);
  @$pb.TagNumber(2)
  void clearVibrate() => clearField(2);
  @$pb.TagNumber(2)
  Effect_FCommand_Vibrate ensureVibrate() => $_ensure(1);
}

/// Command-only パターン: Flutter → Unity のコマンド受信のみ（イベント発行なし）
class Effect extends $pb.GeneratedMessage {
  factory Effect() => create();
  Effect._() : super();
  factory Effect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Effect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Effect', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Effect clone() => Effect()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Effect copyWith(void Function(Effect) updates) => super.copyWith((message) => updates(message as Effect)) as Effect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effect create() => Effect._();
  Effect createEmptyInstance() => create();
  static $pb.PbList<Effect> createRepeated() => $pb.PbList<Effect>();
  @$core.pragma('dart2js:noInline')
  static Effect getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effect>(create);
  static Effect? _defaultInstance;
}

class Timer_UEvent_Tick extends $pb.GeneratedMessage {
  factory Timer_UEvent_Tick({
    $core.double? elapsed,
  }) {
    final $result = create();
    if (elapsed != null) {
      $result.elapsed = elapsed;
    }
    return $result;
  }
  Timer_UEvent_Tick._() : super();
  factory Timer_UEvent_Tick.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timer_UEvent_Tick.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timer.UEvent.Tick', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'elapsed', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timer_UEvent_Tick clone() => Timer_UEvent_Tick()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timer_UEvent_Tick copyWith(void Function(Timer_UEvent_Tick) updates) => super.copyWith((message) => updates(message as Timer_UEvent_Tick)) as Timer_UEvent_Tick;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timer_UEvent_Tick create() => Timer_UEvent_Tick._();
  Timer_UEvent_Tick createEmptyInstance() => create();
  static $pb.PbList<Timer_UEvent_Tick> createRepeated() => $pb.PbList<Timer_UEvent_Tick>();
  @$core.pragma('dart2js:noInline')
  static Timer_UEvent_Tick getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timer_UEvent_Tick>(create);
  static Timer_UEvent_Tick? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get elapsed => $_getN(0);
  @$pb.TagNumber(1)
  set elapsed($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasElapsed() => $_has(0);
  @$pb.TagNumber(1)
  void clearElapsed() => clearField(1);
}

class Timer_UEvent_Milestone extends $pb.GeneratedMessage {
  factory Timer_UEvent_Milestone({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  Timer_UEvent_Milestone._() : super();
  factory Timer_UEvent_Milestone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timer_UEvent_Milestone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timer.UEvent.Milestone', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timer_UEvent_Milestone clone() => Timer_UEvent_Milestone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timer_UEvent_Milestone copyWith(void Function(Timer_UEvent_Milestone) updates) => super.copyWith((message) => updates(message as Timer_UEvent_Milestone)) as Timer_UEvent_Milestone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timer_UEvent_Milestone create() => Timer_UEvent_Milestone._();
  Timer_UEvent_Milestone createEmptyInstance() => create();
  static $pb.PbList<Timer_UEvent_Milestone> createRepeated() => $pb.PbList<Timer_UEvent_Milestone>();
  @$core.pragma('dart2js:noInline')
  static Timer_UEvent_Milestone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timer_UEvent_Milestone>(create);
  static Timer_UEvent_Milestone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}

enum Timer_UEvent_Event {
  tick, 
  milestone, 
  notSet
}

class Timer_UEvent extends $pb.GeneratedMessage {
  factory Timer_UEvent({
    Timer_UEvent_Tick? tick,
    Timer_UEvent_Milestone? milestone,
  }) {
    final $result = create();
    if (tick != null) {
      $result.tick = tick;
    }
    if (milestone != null) {
      $result.milestone = milestone;
    }
    return $result;
  }
  Timer_UEvent._() : super();
  factory Timer_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timer_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Timer_UEvent_Event> _Timer_UEvent_EventByTag = {
    1 : Timer_UEvent_Event.tick,
    2 : Timer_UEvent_Event.milestone,
    0 : Timer_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timer.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Timer_UEvent_Tick>(1, _omitFieldNames ? '' : 'tick', subBuilder: Timer_UEvent_Tick.create)
    ..aOM<Timer_UEvent_Milestone>(2, _omitFieldNames ? '' : 'milestone', subBuilder: Timer_UEvent_Milestone.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timer_UEvent clone() => Timer_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timer_UEvent copyWith(void Function(Timer_UEvent) updates) => super.copyWith((message) => updates(message as Timer_UEvent)) as Timer_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timer_UEvent create() => Timer_UEvent._();
  Timer_UEvent createEmptyInstance() => create();
  static $pb.PbList<Timer_UEvent> createRepeated() => $pb.PbList<Timer_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Timer_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timer_UEvent>(create);
  static Timer_UEvent? _defaultInstance;

  Timer_UEvent_Event whichEvent() => _Timer_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Timer_UEvent_Tick get tick => $_getN(0);
  @$pb.TagNumber(1)
  set tick(Timer_UEvent_Tick v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTick() => $_has(0);
  @$pb.TagNumber(1)
  void clearTick() => clearField(1);
  @$pb.TagNumber(1)
  Timer_UEvent_Tick ensureTick() => $_ensure(0);

  @$pb.TagNumber(2)
  Timer_UEvent_Milestone get milestone => $_getN(1);
  @$pb.TagNumber(2)
  set milestone(Timer_UEvent_Milestone v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMilestone() => $_has(1);
  @$pb.TagNumber(2)
  void clearMilestone() => clearField(2);
  @$pb.TagNumber(2)
  Timer_UEvent_Milestone ensureMilestone() => $_ensure(1);
}

/// Event-only パターン: Unity → Flutter のイベント発行のみ（コマンド受信なし）
class Timer extends $pb.GeneratedMessage {
  factory Timer() => create();
  Timer._() : super();
  factory Timer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timer', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timer clone() => Timer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timer copyWith(void Function(Timer) updates) => super.copyWith((message) => updates(message as Timer)) as Timer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timer create() => Timer._();
  Timer createEmptyInstance() => create();
  static $pb.PbList<Timer> createRepeated() => $pb.PbList<Timer>();
  @$core.pragma('dart2js:noInline')
  static Timer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timer>(create);
  static Timer? _defaultInstance;
}

enum Player_FCommand_Command {
  inventory, 
  notSet
}

class Player_FCommand extends $pb.GeneratedMessage {
  factory Player_FCommand({
    Inventory_FCommand? inventory,
  }) {
    final $result = create();
    if (inventory != null) {
      $result.inventory = inventory;
    }
    return $result;
  }
  Player_FCommand._() : super();
  factory Player_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Player_FCommand_Command> _Player_FCommand_CommandByTag = {
    1 : Player_FCommand_Command.inventory,
    0 : Player_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Player.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Inventory_FCommand>(1, _omitFieldNames ? '' : 'inventory', subBuilder: Inventory_FCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player_FCommand clone() => Player_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player_FCommand copyWith(void Function(Player_FCommand) updates) => super.copyWith((message) => updates(message as Player_FCommand)) as Player_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Player_FCommand create() => Player_FCommand._();
  Player_FCommand createEmptyInstance() => create();
  static $pb.PbList<Player_FCommand> createRepeated() => $pb.PbList<Player_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Player_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player_FCommand>(create);
  static Player_FCommand? _defaultInstance;

  Player_FCommand_Command whichCommand() => _Player_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Inventory_FCommand get inventory => $_getN(0);
  @$pb.TagNumber(1)
  set inventory(Inventory_FCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInventory() => $_has(0);
  @$pb.TagNumber(1)
  void clearInventory() => clearField(1);
  @$pb.TagNumber(1)
  Inventory_FCommand ensureInventory() => $_ensure(0);
}

enum Player_UEvent_Event {
  inventory, 
  notSet
}

class Player_UEvent extends $pb.GeneratedMessage {
  factory Player_UEvent({
    Inventory_UEvent? inventory,
  }) {
    final $result = create();
    if (inventory != null) {
      $result.inventory = inventory;
    }
    return $result;
  }
  Player_UEvent._() : super();
  factory Player_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Player_UEvent_Event> _Player_UEvent_EventByTag = {
    1 : Player_UEvent_Event.inventory,
    0 : Player_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Player.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Inventory_UEvent>(1, _omitFieldNames ? '' : 'inventory', subBuilder: Inventory_UEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player_UEvent clone() => Player_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player_UEvent copyWith(void Function(Player_UEvent) updates) => super.copyWith((message) => updates(message as Player_UEvent)) as Player_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Player_UEvent create() => Player_UEvent._();
  Player_UEvent createEmptyInstance() => create();
  static $pb.PbList<Player_UEvent> createRepeated() => $pb.PbList<Player_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Player_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player_UEvent>(create);
  static Player_UEvent? _defaultInstance;

  Player_UEvent_Event whichEvent() => _Player_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Inventory_UEvent get inventory => $_getN(0);
  @$pb.TagNumber(1)
  set inventory(Inventory_UEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInventory() => $_has(0);
  @$pb.TagNumber(1)
  void clearInventory() => clearField(1);
  @$pb.TagNumber(1)
  Inventory_UEvent ensureInventory() => $_ensure(0);
}

/// 3層ネストパターン: App → Player → Inventory
/// Flutter 側では parse().route().route() で多段ルーティング
class Player extends $pb.GeneratedMessage {
  factory Player() => create();
  Player._() : super();
  factory Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Player', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player clone() => Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player copyWith(void Function(Player) updates) => super.copyWith((message) => updates(message as Player)) as Player;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Player create() => Player._();
  Player createEmptyInstance() => create();
  static $pb.PbList<Player> createRepeated() => $pb.PbList<Player>();
  @$core.pragma('dart2js:noInline')
  static Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player>(create);
  static Player? _defaultInstance;
}

class Inventory_FCommand_AddItem extends $pb.GeneratedMessage {
  factory Inventory_FCommand_AddItem({
    $core.String? itemName,
  }) {
    final $result = create();
    if (itemName != null) {
      $result.itemName = itemName;
    }
    return $result;
  }
  Inventory_FCommand_AddItem._() : super();
  factory Inventory_FCommand_AddItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_FCommand_AddItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory.FCommand.AddItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_FCommand_AddItem clone() => Inventory_FCommand_AddItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_FCommand_AddItem copyWith(void Function(Inventory_FCommand_AddItem) updates) => super.copyWith((message) => updates(message as Inventory_FCommand_AddItem)) as Inventory_FCommand_AddItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand_AddItem create() => Inventory_FCommand_AddItem._();
  Inventory_FCommand_AddItem createEmptyInstance() => create();
  static $pb.PbList<Inventory_FCommand_AddItem> createRepeated() => $pb.PbList<Inventory_FCommand_AddItem>();
  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand_AddItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_FCommand_AddItem>(create);
  static Inventory_FCommand_AddItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemName => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemName() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemName() => clearField(1);
}

class Inventory_FCommand_RemoveItem extends $pb.GeneratedMessage {
  factory Inventory_FCommand_RemoveItem({
    $core.String? itemName,
  }) {
    final $result = create();
    if (itemName != null) {
      $result.itemName = itemName;
    }
    return $result;
  }
  Inventory_FCommand_RemoveItem._() : super();
  factory Inventory_FCommand_RemoveItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_FCommand_RemoveItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory.FCommand.RemoveItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_FCommand_RemoveItem clone() => Inventory_FCommand_RemoveItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_FCommand_RemoveItem copyWith(void Function(Inventory_FCommand_RemoveItem) updates) => super.copyWith((message) => updates(message as Inventory_FCommand_RemoveItem)) as Inventory_FCommand_RemoveItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand_RemoveItem create() => Inventory_FCommand_RemoveItem._();
  Inventory_FCommand_RemoveItem createEmptyInstance() => create();
  static $pb.PbList<Inventory_FCommand_RemoveItem> createRepeated() => $pb.PbList<Inventory_FCommand_RemoveItem>();
  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand_RemoveItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_FCommand_RemoveItem>(create);
  static Inventory_FCommand_RemoveItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemName => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemName() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemName() => clearField(1);
}

enum Inventory_FCommand_Command {
  addItem, 
  removeItem, 
  notSet
}

class Inventory_FCommand extends $pb.GeneratedMessage {
  factory Inventory_FCommand({
    Inventory_FCommand_AddItem? addItem,
    Inventory_FCommand_RemoveItem? removeItem,
  }) {
    final $result = create();
    if (addItem != null) {
      $result.addItem = addItem;
    }
    if (removeItem != null) {
      $result.removeItem = removeItem;
    }
    return $result;
  }
  Inventory_FCommand._() : super();
  factory Inventory_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Inventory_FCommand_Command> _Inventory_FCommand_CommandByTag = {
    1 : Inventory_FCommand_Command.addItem,
    2 : Inventory_FCommand_Command.removeItem,
    0 : Inventory_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<Inventory_FCommand_AddItem>(1, _omitFieldNames ? '' : 'addItem', subBuilder: Inventory_FCommand_AddItem.create)
    ..aOM<Inventory_FCommand_RemoveItem>(2, _omitFieldNames ? '' : 'removeItem', subBuilder: Inventory_FCommand_RemoveItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_FCommand clone() => Inventory_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_FCommand copyWith(void Function(Inventory_FCommand) updates) => super.copyWith((message) => updates(message as Inventory_FCommand)) as Inventory_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand create() => Inventory_FCommand._();
  Inventory_FCommand createEmptyInstance() => create();
  static $pb.PbList<Inventory_FCommand> createRepeated() => $pb.PbList<Inventory_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Inventory_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_FCommand>(create);
  static Inventory_FCommand? _defaultInstance;

  Inventory_FCommand_Command whichCommand() => _Inventory_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Inventory_FCommand_AddItem get addItem => $_getN(0);
  @$pb.TagNumber(1)
  set addItem(Inventory_FCommand_AddItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddItem() => clearField(1);
  @$pb.TagNumber(1)
  Inventory_FCommand_AddItem ensureAddItem() => $_ensure(0);

  @$pb.TagNumber(2)
  Inventory_FCommand_RemoveItem get removeItem => $_getN(1);
  @$pb.TagNumber(2)
  set removeItem(Inventory_FCommand_RemoveItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemoveItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoveItem() => clearField(2);
  @$pb.TagNumber(2)
  Inventory_FCommand_RemoveItem ensureRemoveItem() => $_ensure(1);
}

class Inventory_UEvent_ItemListChanged extends $pb.GeneratedMessage {
  factory Inventory_UEvent_ItemListChanged({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Inventory_UEvent_ItemListChanged._() : super();
  factory Inventory_UEvent_ItemListChanged.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_UEvent_ItemListChanged.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory.UEvent.ItemListChanged', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_UEvent_ItemListChanged clone() => Inventory_UEvent_ItemListChanged()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_UEvent_ItemListChanged copyWith(void Function(Inventory_UEvent_ItemListChanged) updates) => super.copyWith((message) => updates(message as Inventory_UEvent_ItemListChanged)) as Inventory_UEvent_ItemListChanged;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_UEvent_ItemListChanged create() => Inventory_UEvent_ItemListChanged._();
  Inventory_UEvent_ItemListChanged createEmptyInstance() => create();
  static $pb.PbList<Inventory_UEvent_ItemListChanged> createRepeated() => $pb.PbList<Inventory_UEvent_ItemListChanged>();
  @$core.pragma('dart2js:noInline')
  static Inventory_UEvent_ItemListChanged getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_UEvent_ItemListChanged>(create);
  static Inventory_UEvent_ItemListChanged? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

enum Inventory_UEvent_Event {
  itemListChanged, 
  notSet
}

class Inventory_UEvent extends $pb.GeneratedMessage {
  factory Inventory_UEvent({
    Inventory_UEvent_ItemListChanged? itemListChanged,
  }) {
    final $result = create();
    if (itemListChanged != null) {
      $result.itemListChanged = itemListChanged;
    }
    return $result;
  }
  Inventory_UEvent._() : super();
  factory Inventory_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Inventory_UEvent_Event> _Inventory_UEvent_EventByTag = {
    1 : Inventory_UEvent_Event.itemListChanged,
    0 : Inventory_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Inventory_UEvent_ItemListChanged>(1, _omitFieldNames ? '' : 'itemListChanged', subBuilder: Inventory_UEvent_ItemListChanged.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_UEvent clone() => Inventory_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_UEvent copyWith(void Function(Inventory_UEvent) updates) => super.copyWith((message) => updates(message as Inventory_UEvent)) as Inventory_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_UEvent create() => Inventory_UEvent._();
  Inventory_UEvent createEmptyInstance() => create();
  static $pb.PbList<Inventory_UEvent> createRepeated() => $pb.PbList<Inventory_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Inventory_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_UEvent>(create);
  static Inventory_UEvent? _defaultInstance;

  Inventory_UEvent_Event whichEvent() => _Inventory_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Inventory_UEvent_ItemListChanged get itemListChanged => $_getN(0);
  @$pb.TagNumber(1)
  set itemListChanged(Inventory_UEvent_ItemListChanged v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemListChanged() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemListChanged() => clearField(1);
  @$pb.TagNumber(1)
  Inventory_UEvent_ItemListChanged ensureItemListChanged() => $_ensure(0);
}

class Inventory extends $pb.GeneratedMessage {
  factory Inventory() => create();
  Inventory._() : super();
  factory Inventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory clone() => Inventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory copyWith(void Function(Inventory) updates) => super.copyWith((message) => updates(message as Inventory)) as Inventory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory create() => Inventory._();
  Inventory createEmptyInstance() => create();
  static $pb.PbList<Inventory> createRepeated() => $pb.PbList<Inventory>();
  @$core.pragma('dart2js:noInline')
  static Inventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory>(create);
  static Inventory? _defaultInstance;
}

class Notification_FCommand_Dismiss extends $pb.GeneratedMessage {
  factory Notification_FCommand_Dismiss({
    $core.String? notificationId,
  }) {
    final $result = create();
    if (notificationId != null) {
      $result.notificationId = notificationId;
    }
    return $result;
  }
  Notification_FCommand_Dismiss._() : super();
  factory Notification_FCommand_Dismiss.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification_FCommand_Dismiss.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification.FCommand.Dismiss', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'notificationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification_FCommand_Dismiss clone() => Notification_FCommand_Dismiss()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification_FCommand_Dismiss copyWith(void Function(Notification_FCommand_Dismiss) updates) => super.copyWith((message) => updates(message as Notification_FCommand_Dismiss)) as Notification_FCommand_Dismiss;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification_FCommand_Dismiss create() => Notification_FCommand_Dismiss._();
  Notification_FCommand_Dismiss createEmptyInstance() => create();
  static $pb.PbList<Notification_FCommand_Dismiss> createRepeated() => $pb.PbList<Notification_FCommand_Dismiss>();
  @$core.pragma('dart2js:noInline')
  static Notification_FCommand_Dismiss getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification_FCommand_Dismiss>(create);
  static Notification_FCommand_Dismiss? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get notificationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set notificationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotificationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotificationId() => clearField(1);
}

enum Notification_FCommand_Command {
  dismiss, 
  notSet
}

class Notification_FCommand extends $pb.GeneratedMessage {
  factory Notification_FCommand({
    Notification_FCommand_Dismiss? dismiss,
  }) {
    final $result = create();
    if (dismiss != null) {
      $result.dismiss = dismiss;
    }
    return $result;
  }
  Notification_FCommand._() : super();
  factory Notification_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Notification_FCommand_Command> _Notification_FCommand_CommandByTag = {
    1 : Notification_FCommand_Command.dismiss,
    0 : Notification_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_FCommand_Dismiss>(1, _omitFieldNames ? '' : 'dismiss', subBuilder: Notification_FCommand_Dismiss.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification_FCommand clone() => Notification_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification_FCommand copyWith(void Function(Notification_FCommand) updates) => super.copyWith((message) => updates(message as Notification_FCommand)) as Notification_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification_FCommand create() => Notification_FCommand._();
  Notification_FCommand createEmptyInstance() => create();
  static $pb.PbList<Notification_FCommand> createRepeated() => $pb.PbList<Notification_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Notification_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification_FCommand>(create);
  static Notification_FCommand? _defaultInstance;

  Notification_FCommand_Command whichCommand() => _Notification_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_FCommand_Dismiss get dismiss => $_getN(0);
  @$pb.TagNumber(1)
  set dismiss(Notification_FCommand_Dismiss v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDismiss() => $_has(0);
  @$pb.TagNumber(1)
  void clearDismiss() => clearField(1);
  @$pb.TagNumber(1)
  Notification_FCommand_Dismiss ensureDismiss() => $_ensure(0);
}

class Notification_UEvent_Arrived extends $pb.GeneratedMessage {
  factory Notification_UEvent_Arrived({
    $core.String? notificationId,
    $core.String? title,
  }) {
    final $result = create();
    if (notificationId != null) {
      $result.notificationId = notificationId;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  Notification_UEvent_Arrived._() : super();
  factory Notification_UEvent_Arrived.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification_UEvent_Arrived.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification.UEvent.Arrived', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'notificationId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification_UEvent_Arrived clone() => Notification_UEvent_Arrived()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification_UEvent_Arrived copyWith(void Function(Notification_UEvent_Arrived) updates) => super.copyWith((message) => updates(message as Notification_UEvent_Arrived)) as Notification_UEvent_Arrived;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification_UEvent_Arrived create() => Notification_UEvent_Arrived._();
  Notification_UEvent_Arrived createEmptyInstance() => create();
  static $pb.PbList<Notification_UEvent_Arrived> createRepeated() => $pb.PbList<Notification_UEvent_Arrived>();
  @$core.pragma('dart2js:noInline')
  static Notification_UEvent_Arrived getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification_UEvent_Arrived>(create);
  static Notification_UEvent_Arrived? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get notificationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set notificationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotificationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotificationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

enum Notification_UEvent_Event {
  arrived, 
  notSet
}

class Notification_UEvent extends $pb.GeneratedMessage {
  factory Notification_UEvent({
    Notification_UEvent_Arrived? arrived,
  }) {
    final $result = create();
    if (arrived != null) {
      $result.arrived = arrived;
    }
    return $result;
  }
  Notification_UEvent._() : super();
  factory Notification_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Notification_UEvent_Event> _Notification_UEvent_EventByTag = {
    1 : Notification_UEvent_Event.arrived,
    0 : Notification_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_UEvent_Arrived>(1, _omitFieldNames ? '' : 'arrived', subBuilder: Notification_UEvent_Arrived.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification_UEvent clone() => Notification_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification_UEvent copyWith(void Function(Notification_UEvent) updates) => super.copyWith((message) => updates(message as Notification_UEvent)) as Notification_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification_UEvent create() => Notification_UEvent._();
  Notification_UEvent createEmptyInstance() => create();
  static $pb.PbList<Notification_UEvent> createRepeated() => $pb.PbList<Notification_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Notification_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification_UEvent>(create);
  static Notification_UEvent? _defaultInstance;

  Notification_UEvent_Event whichEvent() => _Notification_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_UEvent_Arrived get arrived => $_getN(0);
  @$pb.TagNumber(1)
  set arrived(Notification_UEvent_Arrived v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArrived() => $_has(0);
  @$pb.TagNumber(1)
  void clearArrived() => clearField(1);
  @$pb.TagNumber(1)
  Notification_UEvent_Arrived ensureArrived() => $_ensure(0);
}

/// 共有 inner パターン: Notification は Game と Admin の両方から参照される
/// Unity 側では [ProtoRoute] で曖昧性を解消する
/// Flutter 側では parse().route() で明示的にパスを指定するので曖昧性は発生しない
class Notification extends $pb.GeneratedMessage {
  factory Notification() => create();
  Notification._() : super();
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Notification', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;
}

enum Game_FCommand_Command {
  notification, 
  notSet
}

class Game_FCommand extends $pb.GeneratedMessage {
  factory Game_FCommand({
    Notification_FCommand? notification,
  }) {
    final $result = create();
    if (notification != null) {
      $result.notification = notification;
    }
    return $result;
  }
  Game_FCommand._() : super();
  factory Game_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Game_FCommand_Command> _Game_FCommand_CommandByTag = {
    1 : Game_FCommand_Command.notification,
    0 : Game_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_FCommand>(1, _omitFieldNames ? '' : 'notification', subBuilder: Notification_FCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game_FCommand clone() => Game_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game_FCommand copyWith(void Function(Game_FCommand) updates) => super.copyWith((message) => updates(message as Game_FCommand)) as Game_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game_FCommand create() => Game_FCommand._();
  Game_FCommand createEmptyInstance() => create();
  static $pb.PbList<Game_FCommand> createRepeated() => $pb.PbList<Game_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Game_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game_FCommand>(create);
  static Game_FCommand? _defaultInstance;

  Game_FCommand_Command whichCommand() => _Game_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_FCommand get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification_FCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification_FCommand ensureNotification() => $_ensure(0);
}

enum Game_UEvent_Event {
  notification, 
  notSet
}

class Game_UEvent extends $pb.GeneratedMessage {
  factory Game_UEvent({
    Notification_UEvent? notification,
  }) {
    final $result = create();
    if (notification != null) {
      $result.notification = notification;
    }
    return $result;
  }
  Game_UEvent._() : super();
  factory Game_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Game_UEvent_Event> _Game_UEvent_EventByTag = {
    1 : Game_UEvent_Event.notification,
    0 : Game_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_UEvent>(1, _omitFieldNames ? '' : 'notification', subBuilder: Notification_UEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game_UEvent clone() => Game_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game_UEvent copyWith(void Function(Game_UEvent) updates) => super.copyWith((message) => updates(message as Game_UEvent)) as Game_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game_UEvent create() => Game_UEvent._();
  Game_UEvent createEmptyInstance() => create();
  static $pb.PbList<Game_UEvent> createRepeated() => $pb.PbList<Game_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Game_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game_UEvent>(create);
  static Game_UEvent? _defaultInstance;

  Game_UEvent_Event whichEvent() => _Game_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_UEvent get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification_UEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification_UEvent ensureNotification() => $_ensure(0);
}

class Game extends $pb.GeneratedMessage {
  factory Game() => create();
  Game._() : super();
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  Game createEmptyInstance() => create();
  static $pb.PbList<Game> createRepeated() => $pb.PbList<Game>();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;
}

enum Admin_FCommand_Command {
  notification, 
  notSet
}

class Admin_FCommand extends $pb.GeneratedMessage {
  factory Admin_FCommand({
    Notification_FCommand? notification,
  }) {
    final $result = create();
    if (notification != null) {
      $result.notification = notification;
    }
    return $result;
  }
  Admin_FCommand._() : super();
  factory Admin_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Admin_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Admin_FCommand_Command> _Admin_FCommand_CommandByTag = {
    1 : Admin_FCommand_Command.notification,
    0 : Admin_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Admin.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_FCommand>(1, _omitFieldNames ? '' : 'notification', subBuilder: Notification_FCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Admin_FCommand clone() => Admin_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Admin_FCommand copyWith(void Function(Admin_FCommand) updates) => super.copyWith((message) => updates(message as Admin_FCommand)) as Admin_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Admin_FCommand create() => Admin_FCommand._();
  Admin_FCommand createEmptyInstance() => create();
  static $pb.PbList<Admin_FCommand> createRepeated() => $pb.PbList<Admin_FCommand>();
  @$core.pragma('dart2js:noInline')
  static Admin_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Admin_FCommand>(create);
  static Admin_FCommand? _defaultInstance;

  Admin_FCommand_Command whichCommand() => _Admin_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_FCommand get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification_FCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification_FCommand ensureNotification() => $_ensure(0);
}

enum Admin_UEvent_Event {
  notification, 
  notSet
}

class Admin_UEvent extends $pb.GeneratedMessage {
  factory Admin_UEvent({
    Notification_UEvent? notification,
  }) {
    final $result = create();
    if (notification != null) {
      $result.notification = notification;
    }
    return $result;
  }
  Admin_UEvent._() : super();
  factory Admin_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Admin_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Admin_UEvent_Event> _Admin_UEvent_EventByTag = {
    1 : Admin_UEvent_Event.notification,
    0 : Admin_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Admin.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Notification_UEvent>(1, _omitFieldNames ? '' : 'notification', subBuilder: Notification_UEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Admin_UEvent clone() => Admin_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Admin_UEvent copyWith(void Function(Admin_UEvent) updates) => super.copyWith((message) => updates(message as Admin_UEvent)) as Admin_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Admin_UEvent create() => Admin_UEvent._();
  Admin_UEvent createEmptyInstance() => create();
  static $pb.PbList<Admin_UEvent> createRepeated() => $pb.PbList<Admin_UEvent>();
  @$core.pragma('dart2js:noInline')
  static Admin_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Admin_UEvent>(create);
  static Admin_UEvent? _defaultInstance;

  Admin_UEvent_Event whichEvent() => _Admin_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Notification_UEvent get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(Notification_UEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  Notification_UEvent ensureNotification() => $_ensure(0);
}

class Admin extends $pb.GeneratedMessage {
  factory Admin() => create();
  Admin._() : super();
  factory Admin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Admin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Admin', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Admin clone() => Admin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Admin copyWith(void Function(Admin) updates) => super.copyWith((message) => updates(message as Admin)) as Admin;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Admin create() => Admin._();
  Admin createEmptyInstance() => create();
  static $pb.PbList<Admin> createRepeated() => $pb.PbList<Admin>();
  @$core.pragma('dart2js:noInline')
  static Admin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Admin>(create);
  static Admin? _defaultInstance;
}

enum App_FCommand_Command {
  cube, 
  scene, 
  effect, 
  player, 
  game, 
  admin, 
  notSet
}

class App_FCommand extends $pb.GeneratedMessage {
  factory App_FCommand({
    Cube_FCommand? cube,
    Scene_FCommand? scene,
    Effect_FCommand? effect,
    Player_FCommand? player,
    Game_FCommand? game,
    Admin_FCommand? admin,
  }) {
    final $result = create();
    if (cube != null) {
      $result.cube = cube;
    }
    if (scene != null) {
      $result.scene = scene;
    }
    if (effect != null) {
      $result.effect = effect;
    }
    if (player != null) {
      $result.player = player;
    }
    if (game != null) {
      $result.game = game;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  App_FCommand._() : super();
  factory App_FCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory App_FCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, App_FCommand_Command> _App_FCommand_CommandByTag = {
    1 : App_FCommand_Command.cube,
    2 : App_FCommand_Command.scene,
    3 : App_FCommand_Command.effect,
    4 : App_FCommand_Command.player,
    5 : App_FCommand_Command.game,
    6 : App_FCommand_Command.admin,
    0 : App_FCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'App.FCommand', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<Cube_FCommand>(1, _omitFieldNames ? '' : 'cube', subBuilder: Cube_FCommand.create)
    ..aOM<Scene_FCommand>(2, _omitFieldNames ? '' : 'scene', subBuilder: Scene_FCommand.create)
    ..aOM<Effect_FCommand>(3, _omitFieldNames ? '' : 'effect', subBuilder: Effect_FCommand.create)
    ..aOM<Player_FCommand>(4, _omitFieldNames ? '' : 'player', subBuilder: Player_FCommand.create)
    ..aOM<Game_FCommand>(5, _omitFieldNames ? '' : 'game', subBuilder: Game_FCommand.create)
    ..aOM<Admin_FCommand>(6, _omitFieldNames ? '' : 'admin', subBuilder: Admin_FCommand.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  App_FCommand clone() => App_FCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  App_FCommand copyWith(void Function(App_FCommand) updates) => super.copyWith((message) => updates(message as App_FCommand)) as App_FCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App_FCommand create() => App_FCommand._();
  App_FCommand createEmptyInstance() => create();
  static $pb.PbList<App_FCommand> createRepeated() => $pb.PbList<App_FCommand>();
  @$core.pragma('dart2js:noInline')
  static App_FCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App_FCommand>(create);
  static App_FCommand? _defaultInstance;

  App_FCommand_Command whichCommand() => _App_FCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Cube_FCommand get cube => $_getN(0);
  @$pb.TagNumber(1)
  set cube(Cube_FCommand v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCube() => $_has(0);
  @$pb.TagNumber(1)
  void clearCube() => clearField(1);
  @$pb.TagNumber(1)
  Cube_FCommand ensureCube() => $_ensure(0);

  @$pb.TagNumber(2)
  Scene_FCommand get scene => $_getN(1);
  @$pb.TagNumber(2)
  set scene(Scene_FCommand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => clearField(2);
  @$pb.TagNumber(2)
  Scene_FCommand ensureScene() => $_ensure(1);

  @$pb.TagNumber(3)
  Effect_FCommand get effect => $_getN(2);
  @$pb.TagNumber(3)
  set effect(Effect_FCommand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEffect() => $_has(2);
  @$pb.TagNumber(3)
  void clearEffect() => clearField(3);
  @$pb.TagNumber(3)
  Effect_FCommand ensureEffect() => $_ensure(2);

  @$pb.TagNumber(4)
  Player_FCommand get player => $_getN(3);
  @$pb.TagNumber(4)
  set player(Player_FCommand v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayer() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayer() => clearField(4);
  @$pb.TagNumber(4)
  Player_FCommand ensurePlayer() => $_ensure(3);

  @$pb.TagNumber(5)
  Game_FCommand get game => $_getN(4);
  @$pb.TagNumber(5)
  set game(Game_FCommand v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearGame() => clearField(5);
  @$pb.TagNumber(5)
  Game_FCommand ensureGame() => $_ensure(4);

  @$pb.TagNumber(6)
  Admin_FCommand get admin => $_getN(5);
  @$pb.TagNumber(6)
  set admin(Admin_FCommand v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdmin() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdmin() => clearField(6);
  @$pb.TagNumber(6)
  Admin_FCommand ensureAdmin() => $_ensure(5);
}

enum App_UEvent_Event {
  cube, 
  scene, 
  timer, 
  player, 
  game, 
  admin, 
  notSet
}

class App_UEvent extends $pb.GeneratedMessage {
  factory App_UEvent({
    Cube_UEvent? cube,
    Scene_UEvent? scene,
    Timer_UEvent? timer,
    Player_UEvent? player,
    Game_UEvent? game,
    Admin_UEvent? admin,
  }) {
    final $result = create();
    if (cube != null) {
      $result.cube = cube;
    }
    if (scene != null) {
      $result.scene = scene;
    }
    if (timer != null) {
      $result.timer = timer;
    }
    if (player != null) {
      $result.player = player;
    }
    if (game != null) {
      $result.game = game;
    }
    if (admin != null) {
      $result.admin = admin;
    }
    return $result;
  }
  App_UEvent._() : super();
  factory App_UEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory App_UEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, App_UEvent_Event> _App_UEvent_EventByTag = {
    1 : App_UEvent_Event.cube,
    2 : App_UEvent_Event.scene,
    3 : App_UEvent_Event.timer,
    4 : App_UEvent_Event.player,
    5 : App_UEvent_Event.game,
    6 : App_UEvent_Event.admin,
    0 : App_UEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'App.UEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<Cube_UEvent>(1, _omitFieldNames ? '' : 'cube', subBuilder: Cube_UEvent.create)
    ..aOM<Scene_UEvent>(2, _omitFieldNames ? '' : 'scene', subBuilder: Scene_UEvent.create)
    ..aOM<Timer_UEvent>(3, _omitFieldNames ? '' : 'timer', subBuilder: Timer_UEvent.create)
    ..aOM<Player_UEvent>(4, _omitFieldNames ? '' : 'player', subBuilder: Player_UEvent.create)
    ..aOM<Game_UEvent>(5, _omitFieldNames ? '' : 'game', subBuilder: Game_UEvent.create)
    ..aOM<Admin_UEvent>(6, _omitFieldNames ? '' : 'admin', subBuilder: Admin_UEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  App_UEvent clone() => App_UEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  App_UEvent copyWith(void Function(App_UEvent) updates) => super.copyWith((message) => updates(message as App_UEvent)) as App_UEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App_UEvent create() => App_UEvent._();
  App_UEvent createEmptyInstance() => create();
  static $pb.PbList<App_UEvent> createRepeated() => $pb.PbList<App_UEvent>();
  @$core.pragma('dart2js:noInline')
  static App_UEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App_UEvent>(create);
  static App_UEvent? _defaultInstance;

  App_UEvent_Event whichEvent() => _App_UEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Cube_UEvent get cube => $_getN(0);
  @$pb.TagNumber(1)
  set cube(Cube_UEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCube() => $_has(0);
  @$pb.TagNumber(1)
  void clearCube() => clearField(1);
  @$pb.TagNumber(1)
  Cube_UEvent ensureCube() => $_ensure(0);

  @$pb.TagNumber(2)
  Scene_UEvent get scene => $_getN(1);
  @$pb.TagNumber(2)
  set scene(Scene_UEvent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScene() => $_has(1);
  @$pb.TagNumber(2)
  void clearScene() => clearField(2);
  @$pb.TagNumber(2)
  Scene_UEvent ensureScene() => $_ensure(1);

  @$pb.TagNumber(3)
  Timer_UEvent get timer => $_getN(2);
  @$pb.TagNumber(3)
  set timer(Timer_UEvent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimer() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimer() => clearField(3);
  @$pb.TagNumber(3)
  Timer_UEvent ensureTimer() => $_ensure(2);

  @$pb.TagNumber(4)
  Player_UEvent get player => $_getN(3);
  @$pb.TagNumber(4)
  set player(Player_UEvent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayer() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayer() => clearField(4);
  @$pb.TagNumber(4)
  Player_UEvent ensurePlayer() => $_ensure(3);

  @$pb.TagNumber(5)
  Game_UEvent get game => $_getN(4);
  @$pb.TagNumber(5)
  set game(Game_UEvent v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearGame() => clearField(5);
  @$pb.TagNumber(5)
  Game_UEvent ensureGame() => $_ensure(4);

  @$pb.TagNumber(6)
  Admin_UEvent get admin => $_getN(5);
  @$pb.TagNumber(6)
  set admin(Admin_UEvent v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdmin() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdmin() => clearField(6);
  @$pb.TagNumber(6)
  Admin_UEvent ensureAdmin() => $_ensure(5);
}

/// Root wrapper: 各フィーチャーの Command / Event を oneof で包む
/// Gateway はこの型で通信し、各 Presenter は inner 型を [ProtoHandler] に指定することで
/// Source Generator がルーティングコードを自動生成する
class App extends $pb.GeneratedMessage {
  factory App() => create();
  App._() : super();
  factory App.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory App.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'App', package: const $pb.PackageName(_omitMessageNames ? '' : 'cortis_flutter_sample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  App clone() => App()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  App copyWith(void Function(App) updates) => super.copyWith((message) => updates(message as App)) as App;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App create() => App._();
  App createEmptyInstance() => create();
  static $pb.PbList<App> createRepeated() => $pb.PbList<App>();
  @$core.pragma('dart2js:noInline')
  static App getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App>(create);
  static App? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
