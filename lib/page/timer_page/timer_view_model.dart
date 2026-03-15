import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';

class TimerViewModel with ChangeNotifier {
  final UnityMessenger unityMessenger;
  StreamSubscription? _subscription;

  TimerViewModel({required this.unityMessenger}) {
    _subscription = unityMessenger.onEvent
        .where((any) => any.canUnpackInto(Timer_UEvent()))
        .map((any) => any.unpackInto(Timer_UEvent()))
        .listen(_handleTimerEvent);
  }

  double _elapsed = 0.0;
  double get elapsed => _elapsed;

  final List<int> _milestones = [];
  List<int> get milestones => List.unmodifiable(_milestones);

  void _handleTimerEvent(Timer_UEvent event) {
    if (event.hasTick()) {
      _elapsed = event.tick.elapsed;
      notifyListeners();
    } else if (event.hasMilestone()) {
      _milestones.add(event.milestone.count);
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
