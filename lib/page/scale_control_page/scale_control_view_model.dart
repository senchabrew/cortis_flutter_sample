import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_unity_widget_2/flutter_unity_widget_2.dart';
import 'package:cortis_flutter_sample/data/vector3.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';

class ScaleControlViewModel with ChangeNotifier {
  final UnityMessenger unityMessenger;
  StreamSubscription? _subscription;

  ScaleControlViewModel({required this.unityMessenger}) {
    _subscription = unityMessenger.onEvent
        .where((any) => any.canUnpackInto(Cube_UEvent()))
        .map((any) => any.unpackInto(Cube_UEvent()))
        .listen(_handleCubeEvent);
  }

  Vector3 _scale = Vector3(x: 1.0, y: 1.0, z: 1.0);
  Vector3 get scale => _scale;

  void setX(double x) {
    if (_scale.x != x) {
      _scale = _scale.setX(x);
      _sendScaleCommand();
      notifyListeners();
    }
  }

  void setY(double y) {
    if (_scale.y != y) {
      _scale = _scale.setY(y);
      _sendScaleCommand();
      notifyListeners();
    }
  }

  void setZ(double z) {
    if (_scale.z != z) {
      _scale = _scale.setZ(z);
      _sendScaleCommand();
      notifyListeners();
    }
  }

  void _handleCubeEvent(Cube_UEvent event) {
    if (event.hasScaleChanged()) {
      final s = event.scaleChanged.scale;
      _scale = Vector3(
        x: s.x.clamp(0.5, 3.0),
        y: s.y.clamp(0.5, 3.0),
        z: s.z.clamp(0.5, 3.0),
      );
      notifyListeners();
    }
  }

  void onUnityCreated(UnityWidgetController controller) {
    unityMessenger.onUnityCreated(controller);
  }

  void jump({double height = 2.0}) {
    final command = Cube_FCommand(
      jump: Cube_FCommand_Jump(height: height),
    );
    unityMessenger.sendCommand(command);
  }

  void _sendScaleCommand() {
    final command = Cube_FCommand(
      setScale: Cube_FCommand_SetScale(
        scale: Scale(x: _scale.x, y: _scale.y, z: _scale.z),
      ),
    );
    unityMessenger.sendCommand(command);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
