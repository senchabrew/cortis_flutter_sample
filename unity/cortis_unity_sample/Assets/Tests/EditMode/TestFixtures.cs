using System;
using Cortis;
using Google.Protobuf;
using Google.Protobuf.WellKnownTypes;
using Main.Infrastructure;
using R3;

namespace Tests.EditMode
{
    /// <summary>
    /// FlutterMessageReceiver（MonoBehaviour）の代替。テストで byte[] を流し込む。
    /// </summary>
    sealed class TestReceiver : IFlutterMessageReceiver
    {
        readonly Subject<byte[]> _subject = new();
        public Observable<byte[]> OnMessageReceived => _subject;
        public void Receive(byte[] bytes) => _subject.OnNext(bytes);

        public void Dispose()
        {
            _subject.OnCompleted();
            _subject.Dispose();
        }
    }

    /// <summary>
    /// Send の出力を receiver にループバックすることで、
    /// protobuf シリアライズの往復を実オブジェクトだけで検証可能にするゲートウェイ。
    /// 内部で実 MessageGateway を使い、バイト列のパースも本番と同じ経路を通る。
    /// </summary>
    sealed class LoopbackGateway : IMessageGateway
    {
        readonly MessageGateway _inner;
        readonly TestReceiver _receiver;

        public bool SimulateError { get; set; }

        public LoopbackGateway(TestReceiver receiver)
        {
            _receiver = receiver;
            _inner = new MessageGateway(receiver);
        }

        public Observable<Any> Messages => _inner.Messages;

        public void Send(Any packed)
        {
            if (SimulateError)
                throw new InvalidOperationException("simulated send error");
            _receiver.Receive(packed.ToByteArray());
        }
    }
}
