using Cortis;
using CortisFlutterSample;
using UnityEngine;

namespace Main.Presentation
{
    // Command-only: イベント発行なし、Flutter → Unity のコマンド受信のみ
    [ProtoHandler(typeof(Effect.Types.FCommand))]
    public sealed partial class EffectPresenter
    {
        void HandlePlaySound(Effect.Types.FCommand.Types.PlaySound cmd)
        {
            Debug.Log($"Playing sound: {cmd.SoundName}");
        }

        void HandleVibrate(Effect.Types.FCommand.Types.Vibrate cmd)
        {
            Debug.Log($"Vibrating for {cmd.Duration}s");
        }

        private partial void OnInitialize() { }
        private partial void OnDispose() { }
    }
}
