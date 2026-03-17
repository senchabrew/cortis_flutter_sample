import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_unity_widget_2/flutter_unity_widget_2.dart';
import 'package:cortis_flutter_sample/data/vector3.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:protobuf/protobuf.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';

part 'scale_control_view_model.g.dart';

@riverpod
@ProtoHandler(event: Cube_UEvent)
class ScaleControlViewModel extends _$ScaleControlViewModel
    with _$ScaleControlViewModelProtoMixin<UnityMessenger> {
  @override
  UnityMessenger get messenger => ref.read(unityMessengerProvider);

  CommandRoute<Cube_FCommand> get _cubeCommand =>
      messenger.commandRoute((Cube_FCommand cmd) => App_FCommand(cube: cmd));

  @override
  Vector3 build() {
    initProtoHandler(
      onDispose: ref.onDispose,
      eventStream: messenger.onEvent
          .parse(App_UEvent.new)
          .route((e) => e.hasCube(), (e) => e.cube),
    );
    return Vector3(x: 1.0, y: 1.0, z: 1.0);
  }

  void setX(double x) {
    if (state.x != x) {
      state = state.setX(x);
      _sendScaleCommand();
    }
  }

  void setY(double y) {
    if (state.y != y) {
      state = state.setY(y);
      _sendScaleCommand();
    }
  }

  void setZ(double z) {
    if (state.z != z) {
      state = state.setZ(z);
      _sendScaleCommand();
    }
  }

  @override
  void onScaleChanged(Cube_UEvent_ScaleChanged event) {
    final s = event.scale;
    state = Vector3(
      x: s.x.clamp(0.5, 3.0),
      y: s.y.clamp(0.5, 3.0),
      z: s.z.clamp(0.5, 3.0),
    );
  }

  void onUnityCreated(UnityWidgetController controller) {
    messenger.onUnityCreated(controller);
  }

  void jump({double height = 2.0}) {
    _cubeCommand.send(
      Cube_FCommand(jump: Cube_FCommand_Jump(height: height)),
    );
  }

  void _sendScaleCommand() {
    _cubeCommand.send(
      Cube_FCommand(
        setScale: Cube_FCommand_SetScale(
          scale: Scale(x: state.x, y: state.y, z: state.z),
        ),
      ),
    );
  }
}
