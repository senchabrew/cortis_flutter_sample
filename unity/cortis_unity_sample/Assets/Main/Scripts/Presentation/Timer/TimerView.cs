using R3;
using UnityEngine;

namespace Main.Presentation
{
    public sealed class TimerView : MonoBehaviour
    {
        readonly Subject<float> _tick = new();
        readonly Subject<int> _milestone = new();

        public Observable<float> OnTick => _tick;
        public Observable<int> OnMilestone => _milestone;

        float _elapsed;
        int _lastMilestone;

        void Update()
        {
            _elapsed += Time.deltaTime;
            _tick.OnNext(_elapsed);

            var currentMilestone = (int)_elapsed;
            if (currentMilestone > _lastMilestone && currentMilestone % 5 == 0)
            {
                _lastMilestone = currentMilestone;
                _milestone.OnNext(currentMilestone);
            }
        }

        void OnDestroy()
        {
            _tick.OnCompleted();
            _tick.Dispose();
            _milestone.OnCompleted();
            _milestone.Dispose();
        }
    }
}
