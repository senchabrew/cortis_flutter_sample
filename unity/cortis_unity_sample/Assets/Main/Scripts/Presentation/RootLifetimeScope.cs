using Cortis;
using Main.Infrastructure;
using UnityEngine;
using VContainer;
using VContainer.Unity;

namespace Main.Presentation
{
    public sealed class RootLifetimeScope : LifetimeScope
    {
        [SerializeField] FlutterMessageReceiver flutterMessageReceiver;

        protected override void Awake()
        {
            DontDestroyOnLoad(gameObject);
            base.Awake();
        }

        protected override void Configure(IContainerBuilder builder)
        {
            builder.RegisterComponent<IFlutterMessageReceiver>(flutterMessageReceiver);
            builder.Register<MessageGateway>(Lifetime.Singleton).As<IMessageGateway>();

            ScenePresenter.Register(builder, Lifetime.Singleton);
        }
    }
}
