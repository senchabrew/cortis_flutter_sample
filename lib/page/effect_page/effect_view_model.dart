import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';

class EffectViewModel with ChangeNotifier {
  final UnityMessenger unityMessenger;

  EffectViewModel({required this.unityMessenger});

  void playSound(String soundName) {
    final command = Effect_FCommand(
      playSound: Effect_FCommand_PlaySound(soundName: soundName),
    );
    unityMessenger.sendCommand(command);
  }

  void vibrate({double duration = 0.5}) {
    final command = Effect_FCommand(
      vibrate: Effect_FCommand_Vibrate(duration: duration),
    );
    unityMessenger.sendCommand(command);
  }
}
