// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scale_control_view_model.dart';

// **************************************************************************
// ProtoHandlerGenerator
// **************************************************************************

mixin _$ScaleControlViewModelProtoMixin<T extends MessageGateway> {
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
    final Cube_UEvent event;
    if (msg is Cube_UEvent) {
      event = msg;
    } else {
      try {
        final dynamic any = msg;
        if (!(any.canUnpackInto(Cube_UEvent()) as bool)) return;
        event = any.unpackInto(Cube_UEvent()) as Cube_UEvent;
      } catch (e, stackTrace) {
        onDispatchError(ProtoDispatchException(e, stackTrace));
        return;
      }
    }
    try {
      switch (event.whichEvent()) {
        case Cube_UEvent_Event.scaleChanged:
          onScaleChanged(event.scaleChanged);
        case Cube_UEvent_Event.notSet:
          break;
      }
    } catch (e, stackTrace) {
      onDispatchError(ProtoDispatchException(e, stackTrace));
    }
  }

  /// Unity から Cube_UEvent_ScaleChanged イベントを受信した時に呼ばれる。
  void onScaleChanged(Cube_UEvent_ScaleChanged event);

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

String _$scaleControlViewModelHash() =>
    r'399bde3e78970e66d10f2980627c0b7488591cb9';

/// See also [ScaleControlViewModel].
@ProviderFor(ScaleControlViewModel)
final scaleControlViewModelProvider =
    AutoDisposeNotifierProvider<ScaleControlViewModel, Vector3>.internal(
  ScaleControlViewModel.new,
  name: r'scaleControlViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$scaleControlViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ScaleControlViewModel = AutoDisposeNotifier<Vector3>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
