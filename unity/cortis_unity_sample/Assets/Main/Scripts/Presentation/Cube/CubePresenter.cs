using System;
using Cortis;
using CortisFlutterSample;
using R3;
using UnityEngine;

namespace Main.Presentation
{
    [ProtoHandler(typeof(Cube.Types.FCommand), typeof(Cube.Types.UEvent))]
    public sealed partial class CubePresenter
    {
        readonly CubeView _view;
        IDisposable _subscription;

        public CubePresenter(CubeView view)
        {
            _view = view;
        }

        void HandleSetScale(Cube.Types.FCommand.Types.SetScale cmd)
        {
            var s = cmd.Scale;
            _view.SetScale(new Vector3(s.X, s.Y, s.Z));
        }

        void HandleReset(Cube.Types.FCommand.Types.Reset _) => _view.Reset();

        void HandleJump(Cube.Types.FCommand.Types.Jump cmd) => _view.Jump(cmd.Height);

        private partial void OnInitialize()
        {
            _subscription = _view.OnScaleChanged
                .Select(scale => new Cube.Types.UEvent.Types.ScaleChanged
                {
                    Scale = new Scale { X = scale.x, Y = scale.y, Z = scale.z }
                })
                .Subscribe(DispatchEvent);
        }

        private partial void OnDispose()
        {
            _subscription?.Dispose();
        }
    }
}
