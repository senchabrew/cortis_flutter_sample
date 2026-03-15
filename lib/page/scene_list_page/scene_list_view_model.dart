import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';

class SceneListViewModel with ChangeNotifier {
  final UnityMessenger unityMessenger;

  SceneListViewModel({required this.unityMessenger});

  final List<String> sceneList = [
    'Cube',
    'Sphere',
  ];

  bool tryLoadScene(int index) {
    final sceneType = switch (index) {
      0 => SceneType.SCENE_CUBE,
      1 => SceneType.SCENE_SPHERE,
      _ => null,
    };

    if (sceneType == null) return false;

    final command = Scene_FCommand(
      loadScene: Scene_FCommand_LoadScene(scene: sceneType),
    );
    unityMessenger.sendCommand(command);
    return true;
  }
}
