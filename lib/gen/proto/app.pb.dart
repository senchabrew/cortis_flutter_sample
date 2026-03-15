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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
