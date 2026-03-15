using System;
using R3;
using UnityEngine;

namespace Main.Infrastructure
{
    public sealed class FlutterMessageReceiver : MonoBehaviour, IFlutterMessageReceiver
    {
        readonly Subject<byte[]> _received = new();
        public Observable<byte[]> OnMessageReceived => _received;

        void Awake()
        {
            DontDestroyOnLoad(this);
        }

        // GameObjectにアタッチし、Flutter側からメッセージを受け取る
        public void OnMessage(string message)
        {
            if (TryConvertMessage(message, out var decodedBytes))
            {
                _received.OnNext(decodedBytes);
            }
        }

        bool TryConvertMessage(string message, out byte[] decodedBytes)
        {
            try
            {
                decodedBytes = Convert.FromBase64String(message);
                return true;
            }
            catch (Exception e)
            {
                Debug.LogError($"Error processing message from Flutter: {e}");
            }

            decodedBytes = default;
            return false;
        }

        void OnDestroy()
        {
            _received.OnCompleted();
            _received.Dispose();
        }
    }
}
