import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:protobuf/protobuf.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';

part 'inventory_view_model.g.dart';

/// 3層ネストパターン: App → Player → Inventory
/// parse().route().route() で多段ルーティングするデモ
@riverpod
@ProtoHandler(event: Inventory_UEvent)
class InventoryViewModel extends _$InventoryViewModel
    with _$InventoryViewModelProtoMixin<UnityMessenger> {
  @override
  UnityMessenger get messenger => ref.read(unityMessengerProvider);

  CommandRoute<Inventory_FCommand> get _inventoryCommand => messenger
      .commandRoute((Player_FCommand cmd) => App_FCommand(player: cmd))
      .wrap(
          (Inventory_FCommand cmd) => Player_FCommand(inventory: cmd));

  @override
  List<String> build() {
    // 3層: Any → App_UEvent → Player_UEvent → Inventory_UEvent
    initProtoHandler(
      onDispose: ref.onDispose,
      eventStream: messenger.onEvent
          .parse(App_UEvent.new)
          .route((e) => e.hasPlayer(), (e) => e.player)
          .route((e) => e.hasInventory(), (e) => e.inventory),
    );
    return [];
  }

  void addItem(String itemName) {
    _inventoryCommand.send(
      Inventory_FCommand(
          addItem: Inventory_FCommand_AddItem(itemName: itemName)),
    );
  }

  void removeItem(String itemName) {
    _inventoryCommand.send(
      Inventory_FCommand(
          removeItem: Inventory_FCommand_RemoveItem(itemName: itemName)),
    );
  }

  @override
  void onItemListChanged(Inventory_UEvent_ItemListChanged event) {
    state = List.unmodifiable(event.items);
  }
}
