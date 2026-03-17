// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_view_model.dart';

// **************************************************************************
// ProtoHandlerGenerator
// **************************************************************************

mixin _$TimerViewModelProtoMixin<T extends MessageGateway> {
  T get messenger;

  StreamSubscription? _eventSubscription;

  /// Event 購読を開始する。
  ///
  /// [onDispose] に dispose 登録関数を渡すと、購読解除が自動で登録される。
  /// Riverpod: `initProtoHandler(onDispose: ref.onDispose)`
  ///
  /// [eventStream] を指定すると、[messenger.onEvent] の代わりに
  /// そのストリームを購読する。ネストされた protobuf 構造で
  /// `parse` + `route` でルーティング済みのストリームを渡す場合に使用する。
  void initProtoHandler({
    required void Function(void Function()) onDispose,
    Stream<GeneratedMessage>? eventStream,
  }) {
    _eventSubscription?.cancel();
    _eventSubscription = (eventStream ?? messenger.onEvent).listen(
      _dispatchEvent,
      onError: (Object e, StackTrace st) {
        if (e is Exception) {
          onDispatchError(e);
        } else {
          onDispatchError(ProtoDispatchException(e, st));
        }
      },
    );
    onDispose(disposeProtoHandler);
  }

  /// Event 購読を解除する。
  void disposeProtoHandler() {
    _eventSubscription?.cancel();
    _eventSubscription = null;
  }

  void _dispatchEvent(GeneratedMessage msg) {
    final Timer_UEvent event;
    if (msg is Timer_UEvent) {
      event = msg;
    } else {
      try {
        final dynamic any = msg;
        if (!(any.canUnpackInto(Timer_UEvent()) as bool)) return;
        event = any.unpackInto(Timer_UEvent()) as Timer_UEvent;
      } catch (e, stackTrace) {
        onDispatchError(ProtoDispatchException(e, stackTrace));
        return;
      }
    }
    try {
      switch (event.whichEvent()) {
        case Timer_UEvent_Event.tick:
          onTick(event.tick);
        case Timer_UEvent_Event.milestone:
          onMilestone(event.milestone);
        case Timer_UEvent_Event.notSet:
          break;
      }
    } catch (e, stackTrace) {
      onDispatchError(ProtoDispatchException(e, stackTrace));
    }
  }

  /// Unity から Timer_UEvent_Tick イベントを受信した時に呼ばれる。
  void onTick(Timer_UEvent_Tick event);

  /// Unity から Timer_UEvent_Milestone イベントを受信した時に呼ばれる。
  void onMilestone(Timer_UEvent_Milestone event);

  /// Event ディスパッチ中にエラーが発生した時に呼ばれる。
  /// デフォルトでは [ProtoParseSkipException] を無視し、
  /// その他のエラーは debugPrint でログ出力する。
  /// オーバーライドして Crashlytics 等への送信や独自処理を行える。
  void onDispatchError(Exception exception) {
    if (exception is ProtoParseSkipException) return;
    debugPrint('ProtoHandler dispatch error: $exception');
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timerViewModelHash() => r'feead9fb3f7abcbf13147bf9ab04061451866d29';

/// See also [TimerViewModel].
@ProviderFor(TimerViewModel)
final timerViewModelProvider =
    AutoDisposeNotifierProvider<TimerViewModel, TimerState>.internal(
  TimerViewModel.new,
  name: r'timerViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$timerViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TimerViewModel = AutoDisposeNotifier<TimerState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
