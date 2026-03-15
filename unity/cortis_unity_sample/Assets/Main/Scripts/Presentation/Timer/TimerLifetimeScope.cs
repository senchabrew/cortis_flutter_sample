using UnityEngine;
using VContainer;
using VContainer.Unity;

namespace Main.Presentation
{
    public sealed class TimerLifetimeScope : LifetimeScope
    {
        [SerializeField] TimerView timerView;

        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterComponent(timerView);
            TimerPresenter.Register(builder, Lifetime.Scoped);
        }
    }
}
