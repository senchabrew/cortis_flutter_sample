using System;
using Cortis;
using FlutterUnityIntegration;
using Google.Protobuf.WellKnownTypes;
using R3;
using UnityEngine;

namespace Main.Infrastructure
{
    public sealed class MessageGateway : IMessageGateway, IDisposable
    {
        readonly Subject<Any> _messages = new();
        readonly IDisposable _subscription;

        public Observable<Any> Messages => _messages;

        public MessageGateway(IFlutterMessageReceiver receiver)
        {
            _subscription = receiver.OnMessageReceived
                .Subscribe(bytes =>
                {
                    try
                    {
                        _messages.OnNext(Any.Parser.ParseFrom(bytes));
                    }
                    catch (Exception e)
                    {
                        Debug.LogError($"Failed to parse Any from bytes: {e}");
                    }
                });
        }

        public void Send(Any packed)
        {
#if !UNITY_EDITOR
            UnityMessageManager.Instance.SendMessageToFlutter(
                Convert.ToBase64String(packed.ToByteArray()));
#endif
        }

        public void Dispose()
        {
            _subscription?.Dispose();
            _messages.OnCompleted();
            _messages.Dispose();
        }
    }
}
