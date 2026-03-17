import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'effect_view_model.g.dart';

@riverpod
class EffectViewModel extends _$EffectViewModel {
  UnityMessenger get _messenger => ref.read(unityMessengerProvider);

  CommandRoute<Effect_FCommand> get _effectCommand => _messenger
      .commandRoute((Effect_FCommand cmd) => App_FCommand(effect: cmd));

  @override
  void build() {}

  void playSound(String soundName) {
    _effectCommand.send(
      Effect_FCommand(
        playSound: Effect_FCommand_PlaySound(soundName: soundName),
      ),
    );
  }

  void vibrate({double duration = 0.5}) {
    _effectCommand.send(
      Effect_FCommand(vibrate: Effect_FCommand_Vibrate(duration: duration)),
    );
  }
}
