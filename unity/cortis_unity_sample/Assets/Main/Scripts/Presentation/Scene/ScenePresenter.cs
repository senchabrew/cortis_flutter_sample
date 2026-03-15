using System.Threading;
using Cortis;
using Cysharp.Threading.Tasks;
using UnityEngine;
using UnityEngine.SceneManagement;
using Proto = CortisFlutterSample;

namespace Main.Presentation
{
    [ProtoHandler(typeof(Proto.Scene.Types.FCommand), typeof(Proto.Scene.Types.UEvent))]
    public sealed partial class ScenePresenter
    {
        CancellationTokenSource _cts;

        void HandleLoadScene(Proto.Scene.Types.FCommand.Types.LoadScene cmd)
        {
            LoadSceneAsync(cmd.Scene).Forget();
        }

        async UniTaskVoid LoadSceneAsync(Proto.SceneType sceneType)
        {
            _cts?.Cancel();
            _cts?.Dispose();
            _cts = new();

            var buildIndex = (int)sceneType;
            var activeScene = SceneManager.GetActiveScene();
            if (activeScene.buildIndex == buildIndex)
                return;

            DispatchEvent(new Proto.Scene.Types.UEvent.Types.PhaseChanged
            {
                Phase = Proto.Scene.Types.Phase.Loading
            });

            try
            {
                await SceneManager.LoadSceneAsync(buildIndex).WithCancellation(_cts.Token);

                DispatchEvent(new Proto.Scene.Types.UEvent.Types.PhaseChanged
                {
                    Phase = Proto.Scene.Types.Phase.Loaded
                });
            }
            catch (System.OperationCanceledException)
            {
                // キャンセルは正常フロー（新しいシーン読み込みによる中断）
            }
            catch (System.Exception e)
            {
                Debug.LogError($"Failed to load scene: {e}");
            }
        }

        private partial void OnInitialize() { }

        private partial void OnDispose()
        {
            _cts?.Cancel();
            _cts?.Dispose();
        }
    }
}
