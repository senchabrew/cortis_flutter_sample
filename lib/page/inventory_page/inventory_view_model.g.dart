// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_view_model.dart';

// **************************************************************************
// ProtoHandlerGenerator
// **************************************************************************

mixin _$InventoryViewModelProtoMixin<T extends MessageGateway> {
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
    final Inventory_UEvent event;
    if (msg is Inventory_UEvent) {
      event = msg;
    } else {
      try {
        final dynamic any = msg;
        if (!(any.canUnpackInto(Inventory_UEvent()) as bool)) return;
        event = any.unpackInto(Inventory_UEvent()) as Inventory_UEvent;
      } catch (e, stackTrace) {
        onDispatchError(ProtoDispatchException(e, stackTrace));
        return;
      }
    }
    try {
      switch (event.whichEvent()) {
        case Inventory_UEvent_Event.itemListChanged:
          onItemListChanged(event.itemListChanged);
        case Inventory_UEvent_Event.notSet:
          break;
      }
    } catch (e, stackTrace) {
      onDispatchError(ProtoDispatchException(e, stackTrace));
    }
  }

  /// Unity から Inventory_UEvent_ItemListChanged イベントを受信した時に呼ばれる。
  void onItemListChanged(Inventory_UEvent_ItemListChanged event);

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

String _$inventoryViewModelHash() =>
    r'886c8b04a43b39ebe9a960dcf9f1dd47afcfd980';

/// 3層ネストパターン: App → Player → Inventory
/// parse().route().route() で多段ルーティングするデモ
///
/// Copied from [InventoryViewModel].
@ProviderFor(InventoryViewModel)
final inventoryViewModelProvider =
    AutoDisposeNotifierProvider<InventoryViewModel, List<String>>.internal(
  InventoryViewModel.new,
  name: r'inventoryViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$inventoryViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InventoryViewModel = AutoDisposeNotifier<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
