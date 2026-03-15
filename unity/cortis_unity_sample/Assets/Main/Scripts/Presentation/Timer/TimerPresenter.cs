using System;
using Cortis;
using CortisFlutterSample;
using R3;

namespace Main.Presentation
{
    // Event-only: コマンド受信なし、Unity → Flutter のイベント発行のみ
    [ProtoHandler(null, typeof(Timer.Types.UEvent))]
    public sealed partial class TimerPresenter
    {
        readonly TimerView _view;
        IDisposable _tickSubscription;
        IDisposable _milestoneSubscription;

        public TimerPresenter(TimerView view)
        {
            _view = view;
        }

        private partial void OnInitialize()
        {
            _tickSubscription = _view.OnTick
                .Subscribe(elapsed =>
                    DispatchEvent(new Timer.Types.UEvent.Types.Tick { Elapsed = elapsed }));

            _milestoneSubscription = _view.OnMilestone
                .Subscribe(count =>
                    DispatchEvent(new Timer.Types.UEvent.Types.Milestone { Count = count }));
        }

        private partial void OnDispose()
        {
            _tickSubscription?.Dispose();
            _milestoneSubscription?.Dispose();
        }
    }
}
