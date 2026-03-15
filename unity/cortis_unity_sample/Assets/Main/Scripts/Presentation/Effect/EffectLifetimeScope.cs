using VContainer;
using VContainer.Unity;

namespace Main.Presentation
{
    public sealed class EffectLifetimeScope : LifetimeScope
    {
        protected override void Configure(IContainerBuilder builder)
        {
            EffectPresenter.Register(builder, Lifetime.Scoped);
        }
    }
}
