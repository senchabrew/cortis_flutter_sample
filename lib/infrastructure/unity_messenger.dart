import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_unity_widget_2/flutter_unity_widget_2.dart';
import 'package:cortis_flutter_sample/gen/proto/google/protobuf/any.pb.dart';
import 'package:protobuf/protobuf.dart';

class UnityMessenger {
  UnityWidgetController? _unityWidgetController;
  final StreamController<Any> _controller = StreamController.broadcast();

  Stream<Any> get onEvent => _controller.stream;

  void dispose() {
    _controller.close();
  }

  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
  }

  void onReceivedUnityMessage(dynamic message) {
    if (message is String) {
      try {
        final decodedBytes = base64Decode(message);
        final any = Any.fromBuffer(decodedBytes);
        _controller.add(any);
      } catch (e) {
        debugPrint('Error decoding Unity message: $e');
      }
    }
  }

  void sendCommand(GeneratedMessage command) {
    final controller = _unityWidgetController;
    if (controller == null) {
      debugPrint('UnityMessenger: controller not initialized');
      return;
    }
    final packed = Any.pack(command);
    final encodedMessage = base64Encode(packed.writeToBuffer());
    controller.postMessage(
      'FlutterMessageReceiver',
      'OnMessage',
      encodedMessage,
    );
  }
}
