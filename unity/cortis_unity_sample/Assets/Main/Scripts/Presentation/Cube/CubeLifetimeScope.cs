using UnityEngine;
using VContainer;
using VContainer.Unity;

namespace Main.Presentation
{
    public sealed class CubeLifetimeScope : LifetimeScope
    {
        [SerializeField] CubeView cubeView;

        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterComponent(cubeView);
            CubePresenter.Register(builder, Lifetime.Scoped);
        }
    }
}
