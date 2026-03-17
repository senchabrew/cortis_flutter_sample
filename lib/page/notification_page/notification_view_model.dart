import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:protobuf/protobuf.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';

part 'notification_view_model.g.dart';

enum NotificationContext { game, admin }

/// 共有 inner パターン: Notification は Game と Admin の両方から参照される
/// Flutter 側では initProtoHandler に渡すルーティング済みストリームと
/// CommandRoute を外から注入することで、同じ ViewModel を異なるコンテキストで再利用する
@riverpod
@ProtoHandler(event: Notification_UEvent)
class NotificationViewModel extends _$NotificationViewModel
    with _$NotificationViewModelProtoMixin<UnityMessenger> {
  @override
  UnityMessenger get messenger => ref.read(unityMessengerProvider);

  late final CommandRoute<Notification_FCommand> _notificationCommand;

  @override
  List<({String id, String title})> build(NotificationContext context) {
    // ルーティングコンテキストに応じてストリームとコマンドルートを切り替え
    final (eventStream, commandRoute) = switch (context) {
      NotificationContext.game => (
          messenger.onEvent
              .parse(App_UEvent.new)
              .route((e) => e.hasGame(), (e) => e.game)
              .route((e) => e.hasNotification(), (e) => e.notification),
          messenger
              .commandRoute(
                  (Game_FCommand cmd) => App_FCommand(game: cmd))
              .wrap((Notification_FCommand cmd) =>
                  Game_FCommand(notification: cmd)),
        ),
      NotificationContext.admin => (
          messenger.onEvent
              .parse(App_UEvent.new)
              .route((e) => e.hasAdmin(), (e) => e.admin)
              .route((e) => e.hasNotification(), (e) => e.notification),
          messenger
              .commandRoute(
                  (Admin_FCommand cmd) => App_FCommand(admin: cmd))
              .wrap((Notification_FCommand cmd) =>
                  Admin_FCommand(notification: cmd)),
        ),
    };

    _notificationCommand = commandRoute;
    initProtoHandler(
      onDispose: ref.onDispose,
      eventStream: eventStream,
    );
    return [];
  }

  void dismiss(String notificationId) {
    _notificationCommand.send(
      Notification_FCommand(
          dismiss:
              Notification_FCommand_Dismiss(notificationId: notificationId)),
    );
  }

  @override
  void onArrived(Notification_UEvent_Arrived event) {
    state = [
      ...state,
      (id: event.notificationId, title: event.title),
    ];
  }
}
