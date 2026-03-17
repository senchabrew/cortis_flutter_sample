# Cortis Flutter Sample

Flutter と Unity 間の protobuf 通信を [Cortis](https://github.com/senchabrew/cortis) フレームワークで実現するデモアプリケーション。

Cortis の 3 つの通信パターン（Command+Event / Command-only / Event-only）を Flutter 側から操作・確認できる。

## アーキテクチャ

```
Flutter (Dart)                                          Unity (C#)
+-------------------+                                   +-------------------+
|                   |   protobuf bytes (base64)         |                   |
|  ViewModel        |                                   |  Presenter        |
|  (@riverpod)      |                                   |  [ProtoHandler]   |
|                   |                                   |                   |
|  sendCommand() ---|---> UnityMessenger.sendCommand()  |                   |
|                   |        |                          |                   |
|                   |        | Any.pack() + base64      |                   |
|                   |        v                          |                   |
|                   |   flutter_unity_widget_2           |                   |
|                   |   postMessage()                   |                   |
|                   |        |                          |                   |
|                   |        +-- base64 bytes --------->| FlutterMessage    |
|                   |                                   | Receiver          |
|                   |                                   |   |               |
|                   |                                   |   v               |
|                   |                                   | MessageGateway    |
|                   |                                   | (IMessageGateway) |
|                   |                                   |   |               |
|                   |                                   |   v               |
|                   |                                   | MessageBinding    |
|                   |                                   |   |               |
|                   |                                   |   v               |
|                   |                                   | Handle___()       |
|                   |                                   |                   |
|                   |   Unity -> Flutter (Event)        |                   |
|                   |                                   | DispatchEvent()   |
|                   |        <-- base64 bytes ----------|   |               |
|                   |                                   |   v               |
|  onEvent stream <-|--- UnityMessenger                 | EventSource       |
|  (Stream<Any>)    |    .onReceivedUnityMessage()      | (Observable<T>)   |
|                   |                                   |                   |
+-------------------+                                   +-------------------+
```

### データフロー要約

| 方向 | 経路 |
|------|------|
| Flutter -> Unity (Command) | `ViewModel` -> `UnityMessenger.sendCommand()` -> base64 -> `FlutterMessageReceiver` -> `MessageGateway` -> `MessageBinding` -> `Presenter.Handle___()` |
| Unity -> Flutter (Event) | `Presenter.DispatchEvent()` -> `EventSource` -> `MessageBinding` -> `MessageGateway.Send()` -> base64 -> `UnityMessenger.onEvent` -> `ViewModel` |

## 3 つの通信パターン

### 1. Command + Event（双方向）: Cube

Flutter からコマンドを送信し、Unity からイベントを受信する双方向パターン。

スライダーで Cube のスケールを操作（Flutter -> Unity）し、Unity 側のスケール変更を Flutter に通知（Unity -> Flutter）する。

| レイヤー | ファイル |
|---------|---------|
| Proto定義 | [`proto/app.proto`](proto/app.proto) - `Cube.FCommand` / `Cube.UEvent` |
| Flutter ViewModel | [`lib/page/scale_control_page/scale_control_view_model.dart`](lib/page/scale_control_page/scale_control_view_model.dart) |
| Flutter View | [`lib/page/scale_control_page/scale_control_view.dart`](lib/page/scale_control_page/scale_control_view.dart) |
| Unity Presenter | [`unity/.../Presentation/Cube/CubePresenter.cs`](unity/cortis_unity_sample/Assets/Main/Scripts/Presentation/Cube/CubePresenter.cs) |

```csharp
// Unity 側: [ProtoHandler] で Command 受信 + Event 発行を宣言
[ProtoHandler(typeof(Cube.Types.FCommand), typeof(Cube.Types.UEvent))]
public sealed partial class CubePresenter { ... }
```

### 2. Command-only（Flutter -> Unity のみ）: Effect

Flutter からコマンドを送信するのみで、Unity からのイベント発行がないパターン。

サウンド再生やバイブレーションの指示を Flutter から Unity に送る。Unity 側はコマンドを処理するのみで、結果を返さない。

| レイヤー | ファイル |
|---------|---------|
| Proto定義 | [`proto/app.proto`](proto/app.proto) - `Effect.FCommand` |
| Flutter ViewModel | [`lib/page/effect_page/effect_view_model.dart`](lib/page/effect_page/effect_view_model.dart) |
| Flutter View | [`lib/page/effect_page/effect_view.dart`](lib/page/effect_page/effect_view.dart) |
| Unity Presenter | [`unity/.../Presentation/Effect/EffectPresenter.cs`](unity/cortis_unity_sample/Assets/Main/Scripts/Presentation/Effect/EffectPresenter.cs) |

```csharp
// Unity 側: 第2引数なしで Command-only を宣言
[ProtoHandler(typeof(Effect.Types.FCommand))]
public sealed partial class EffectPresenter { ... }
```

### 3. Event-only（Unity -> Flutter のみ）: Timer

Unity 側からイベントを一方的に発行し、Flutter は受信のみ行うパターン。

Unity 内のタイマーが経過時間（Tick）とマイルストーン（Milestone）を Flutter に通知する。Flutter 側はコマンドを送信しない。

| レイヤー | ファイル |
|---------|---------|
| Proto定義 | [`proto/app.proto`](proto/app.proto) - `Timer.UEvent` |
| Flutter ViewModel | [`lib/page/timer_page/timer_view_model.dart`](lib/page/timer_page/timer_view_model.dart) |
| Flutter View | [`lib/page/timer_page/timer_view.dart`](lib/page/timer_page/timer_view.dart) |
| Unity Presenter | [`unity/.../Presentation/Timer/TimerPresenter.cs`](unity/cortis_unity_sample/Assets/Main/Scripts/Presentation/Timer/TimerPresenter.cs) |

```csharp
// Unity 側: 第1引数 null で Event-only を宣言
[ProtoHandler(null, typeof(Timer.Types.UEvent))]
public sealed partial class TimerPresenter { ... }
```

## Source Generator（自動生成コード）

Cortis の `[ProtoHandler]` 属性を付与すると、Source Generator が以下のコードを自動生成する。

### 生成されるメソッド・クラス

| 生成物 | 説明 |
|--------|------|
| `Handle___()` | Command の oneof case ごとに生成されるハンドラメソッド。開発者が実装する |
| `DispatchEvent()` | Event を Flutter へ送信するメソッド。Presenter 内から呼び出す |
| `OnInitialize()` | Presenter 初期化時に呼ばれる partial メソッド。購読登録などに使用 |
| `OnDispose()` | Presenter 破棄時に呼ばれる partial メソッド。リソース解放に使用 |
| `Register()` | VContainer への DI 登録を行う static メソッド |
| `MessageBinding` | `IMessageGateway` と Presenter を接続するバインディングクラス |

### 例: CubePresenter

```csharp
// 開発者が書くコード
[ProtoHandler(typeof(Cube.Types.FCommand), typeof(Cube.Types.UEvent))]
public sealed partial class CubePresenter
{
    // Source Generator が生成する partial メソッドを実装
    private partial void OnInitialize() { /* 購読登録 */ }
    private partial void OnDispose() { /* リソース解放 */ }

    // FCommand.oneof の各 case に対応するハンドラ（自動生成されるシグネチャ）
    void HandleSetScale(Cube.Types.FCommand.Types.SetScale cmd) { ... }
    void HandleReset(Cube.Types.FCommand.Types.Reset cmd) { ... }
    void HandleJump(Cube.Types.FCommand.Types.Jump cmd) { ... }

    // Event 送信（Source Generator が生成するメソッド）
    // DispatchEvent(new Cube.Types.UEvent.Types.ScaleChanged { ... });
}

// DI 登録（Source Generator が生成する static メソッド）
CubePresenter.Register(builder, Lifetime.Scoped);
```

## ディレクトリ構成

```
cortis_flutter_sample/
├── proto/
│   └── app.proto                    # protobuf メッセージ定義
├── lib/
│   ├── main.dart                    # エントリポイント
│   ├── infrastructure/
│   │   └── unity_messenger.dart     # Flutter <-> Unity 通信層
│   ├── data/
│   │   └── vector3.dart             # データモデル
│   ├── component/
│   │   └── axis_scale_slider.dart   # 共通UIコンポーネント
│   ├── page/
│   │   ├── scale_control_page/      # Cube スケール操作画面
│   │   ├── effect_page/             # Effect コマンド送信画面
│   │   ├── timer_page/              # Timer イベント受信画面
│   │   └── scene_list_page/         # シーン一覧画面
│   └── gen/proto/                   # protoc 生成コード (自動生成)
└── unity/cortis_unity_sample/
    └── Assets/Main/Scripts/
        ├── Infrastructure/
        │   ├── MessageGateway.cs        # Cortis.IMessageGateway 実装
        │   ├── FlutterMessageReceiver.cs # Flutter → Unity バイト列受信
        │   └── IFlutterMessageReceiver.cs
        ├── Presentation/
        │   ├── RootLifetimeScope.cs     # DI ルート設定
        │   ├── Cube/                    # Command+Event パターン
        │   │   ├── CubePresenter.cs
        │   │   ├── CubeView.cs
        │   │   └── CubeLifetimeScope.cs
        │   ├── Effect/                  # Command-only パターン
        │   │   ├── EffectPresenter.cs
        │   │   └── EffectLifetimeScope.cs
        │   ├── Timer/                   # Event-only パターン
        │   │   ├── TimerPresenter.cs
        │   │   ├── TimerView.cs
        │   │   └── TimerLifetimeScope.cs
        │   └── Scene/                   # Command+Event パターン
        │       └── ScenePresenter.cs
        └── Generated/
            └── App.cs                  # protoc 生成コード (自動生成)
```

## セットアップ

### 前提条件

- Flutter SDK (Dart ^3.6.1)
- `protoc` (Protocol Buffers コンパイラ)
- `protoc-gen-dart` プラグイン (`dart pub global activate protoc_plugin`)
- Unity 6000.0 以降（Unity プロジェクト側）
- [Cortis](../cortis/) パッケージ（ローカル参照）
- R3 NuGet パッケージ（NuGetForUnity 経由でインストール）

### protobuf コード生成

```bash
# Dart + C# の両方を生成
make all

# Dart のみ
make dart

# C# のみ
make csharp

# 生成コードのクリーンアップ
make clean
```

生成先:
- Dart: `lib/gen/proto/`
- C#: `unity/cortis_unity_sample/Assets/Main/Scripts/Generated/`

### Flutter 依存関係のインストール

```bash
flutter pub get
```

## Proto 命名規約

本サンプルでは、通信方向を明確にするため以下の命名規約を採用している。

| メッセージ名 | 方向 | 説明 |
|-------------|------|------|
| `FCommand` | Flutter -> Unity | Flutter が送信するコマンド |
| `UEvent` | Unity -> Flutter | Unity が発行するイベント |

```protobuf
message Cube {
  // Flutter -> Unity: Flutter が Unity に送るコマンド
  message FCommand {
    message SetScale { Scale scale = 1; }
    message Reset {}
    oneof command { ... }
  }

  // Unity -> Flutter: Unity が Flutter に通知するイベント
  message UEvent {
    message ScaleChanged { Scale scale = 1; }
    oneof event { ... }
  }
}
```

`F` = Flutter 起点、`U` = Unity 起点。メッセージの送信元を接頭辞で表す。
