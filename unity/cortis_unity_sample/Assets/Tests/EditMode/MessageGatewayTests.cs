using System.Collections.Generic;
using System.Text.RegularExpressions;
using Google.Protobuf;
using Google.Protobuf.WellKnownTypes;
using NUnit.Framework;
using R3;
using UnityEngine;
using UnityEngine.TestTools;

namespace Tests.EditMode
{
    /// <summary>
    /// MessageGateway の統合テスト。
    /// TestReceiver → 実 MessageGateway で、バイト列パースとマルチキャストを検証する。
    /// </summary>
    public class MessageGatewayTests
    {
        TestReceiver _receiver;
        Main.Infrastructure.MessageGateway _gateway;

        [SetUp]
        public void SetUp()
        {
            _receiver = new TestReceiver();
            _gateway = new Main.Infrastructure.MessageGateway(_receiver);
        }

        [TearDown]
        public void TearDown()
        {
            _gateway.Dispose();
            _receiver.Dispose();
        }

        [Test]
        public void 有効なバイト列からAnyメッセージが発行される()
        {
            var original = Any.Pack(new StringValue { Value = "test" });
            var received = new List<Any>();
            _gateway.Messages.Subscribe(any => received.Add(any));

            _receiver.Receive(original.ToByteArray());

            Assert.AreEqual(1, received.Count);
            var unpacked = received[0].Unpack<StringValue>();
            Assert.AreEqual("test", unpacked.Value);
        }

        [Test]
        public void 無効なバイト列でもストリームが生存する()
        {
            var received = new List<Any>();
            _gateway.Messages.Subscribe(any => received.Add(any));

            LogAssert.Expect(LogType.Error, new Regex("Failed to parse Any from bytes"));
            _receiver.Receive(new byte[] { 0xFF, 0xFF, 0xFF });
            Assert.AreEqual(0, received.Count);

            _receiver.Receive(Any.Pack(new StringValue { Value = "ok" }).ToByteArray());
            Assert.AreEqual(1, received.Count);
            Assert.AreEqual("ok", received[0].Unpack<StringValue>().Value);
        }

        [Test]
        public void 複数サブスクライバにブロードキャストされる()
        {
            var received1 = new List<Any>();
            var received2 = new List<Any>();
            _gateway.Messages.Subscribe(any => received1.Add(any));
            _gateway.Messages.Subscribe(any => received2.Add(any));

            _receiver.Receive(Any.Pack(new StringValue { Value = "broadcast" }).ToByteArray());

            Assert.AreEqual(1, received1.Count);
            Assert.AreEqual(1, received2.Count);
        }
    }
}
