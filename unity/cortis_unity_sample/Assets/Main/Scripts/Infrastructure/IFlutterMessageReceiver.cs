using R3;

namespace Main.Infrastructure
{
    public interface IFlutterMessageReceiver
    {
        Observable<byte[]> OnMessageReceived { get; }
    }
}
