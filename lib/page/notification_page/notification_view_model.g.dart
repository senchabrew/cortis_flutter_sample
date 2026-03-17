// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_view_model.dart';

// **************************************************************************
// ProtoHandlerGenerator
// **************************************************************************

mixin _$NotificationViewModelProtoMixin<T extends MessageGateway> {
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
    final Notification_UEvent event;
    if (msg is Notification_UEvent) {
      event = msg;
    } else {
      try {
        final dynamic any = msg;
        if (!(any.canUnpackInto(Notification_UEvent()) as bool)) return;
        event = any.unpackInto(Notification_UEvent()) as Notification_UEvent;
      } catch (e, stackTrace) {
        onDispatchError(ProtoDispatchException(e, stackTrace));
        return;
      }
    }
    try {
      switch (event.whichEvent()) {
        case Notification_UEvent_Event.arrived:
          onArrived(event.arrived);
        case Notification_UEvent_Event.notSet:
          break;
      }
    } catch (e, stackTrace) {
      onDispatchError(ProtoDispatchException(e, stackTrace));
    }
  }

  /// Unity から Notification_UEvent_Arrived イベントを受信した時に呼ばれる。
  void onArrived(Notification_UEvent_Arrived event);

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

String _$notificationViewModelHash() =>
    r'b791273900670e8125c7720ee92df7c099910844';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$NotificationViewModel
    extends BuildlessAutoDisposeNotifier<List<({String id, String title})>> {
  late final NotificationContext context;

  List<({String id, String title})> build(
    NotificationContext context,
  );
}

/// 共有 inner パターン: Notification は Game と Admin の両方から参照される
/// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
/// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
///
/// Copied from [NotificationViewModel].
@ProviderFor(NotificationViewModel)
const notificationViewModelProvider = NotificationViewModelFamily();

/// 共有 inner パターン: Notification は Game と Admin の両方から参照される
/// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
/// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
///
/// Copied from [NotificationViewModel].
class NotificationViewModelFamily
    extends Family<List<({String id, String title})>> {
  /// 共有 inner パターン: Notification は Game と Admin の両方から参照される
  /// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
  /// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
  ///
  /// Copied from [NotificationViewModel].
  const NotificationViewModelFamily();

  /// 共有 inner パターン: Notification は Game と Admin の両方から参照される
  /// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
  /// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
  ///
  /// Copied from [NotificationViewModel].
  NotificationViewModelProvider call(
    NotificationContext context,
  ) {
    return NotificationViewModelProvider(
      context,
    );
  }

  @override
  NotificationViewModelProvider getProviderOverride(
    covariant NotificationViewModelProvider provider,
  ) {
    return call(
      provider.context,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'notificationViewModelProvider';
}

/// 共有 inner パターン: Notification は Game と Admin の両方から参照される
/// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
/// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
///
/// Copied from [NotificationViewModel].
class NotificationViewModelProvider extends AutoDisposeNotifierProviderImpl<
    NotificationViewModel, List<({String id, String title})>> {
  /// 共有 inner パターン: Notification は Game と Admin の両方から参照される
  /// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
  /// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
  ///
  /// Copied from [NotificationViewModel].
  NotificationViewModelProvider(
    NotificationContext context,
  ) : this._internal(
          () => NotificationViewModel()..context = context,
          from: notificationViewModelProvider,
          name: r'notificationViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationViewModelHash,
          dependencies: NotificationViewModelFamily._dependencies,
          allTransitiveDependencies:
              NotificationViewModelFamily._allTransitiveDependencies,
          context: context,
        );

  NotificationViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final NotificationContext context;

  @override
  List<({String id, String title})> runNotifierBuild(
    covariant NotificationViewModel notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(NotificationViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationViewModelProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<NotificationViewModel,
      List<({String id, String title})>> createElement() {
    return _NotificationViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationViewModelProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NotificationViewModelRef
    on AutoDisposeNotifierProviderRef<List<({String id, String title})>> {
  /// The parameter `context` of this provider.
  NotificationContext get context;
}

class _NotificationViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<NotificationViewModel,
        List<({String id, String title})>> with NotificationViewModelRef {
  _NotificationViewModelProviderElement(super.provider);

  @override
  NotificationContext get context =>
      (origin as NotificationViewModelProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
