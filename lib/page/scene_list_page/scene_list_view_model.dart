import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scene_list_view_model.g.dart';

@riverpod
class SceneListViewModel extends _$SceneListViewModel {
  UnityMessenger get _messenger => ref.read(unityMessengerProvider);

  CommandRoute<Scene_FCommand> get _sceneCommand => _messenger
      .commandRoute((Scene_FCommand cmd) => App_FCommand(scene: cmd));

  @override
  List<String> build() {
    return ['Cube', 'Sphere'];
  }

  bool tryLoadScene(int index) {
    final sceneType = switch (index) {
      0 => SceneType.SCENE_CUBE,
      1 => SceneType.SCENE_SPHERE,
      _ => null,
    };

    if (sceneType == null) return false;

    _sceneCommand.send(
      Scene_FCommand(
        loadScene: Scene_FCommand_LoadScene(scene: sceneType),
      ),
    );
    return true;
  }
}
