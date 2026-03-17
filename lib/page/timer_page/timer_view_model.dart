import 'package:cortis_flutter/cortis_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:cortis_flutter_sample/gen/proto/app.pb.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/main.dart';
import 'package:protobuf/protobuf.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';

part 'timer_view_model.g.dart';

class TimerState {
  final double elapsed;
  final List<int> milestones;

  const TimerState({this.elapsed = 0.0, this.milestones = const []});

  TimerState copyWith({double? elapsed, List<int>? milestones}) {
    return TimerState(
      elapsed: elapsed ?? this.elapsed,
      milestones: milestones ?? this.milestones,
    );
  }
}

@riverpod
@ProtoHandler(event: Timer_UEvent)
class TimerViewModel extends _$TimerViewModel
    with _$TimerViewModelProtoMixin<UnityMessenger> {
  @override
  UnityMessenger get messenger => ref.read(unityMessengerProvider);

  @override
  TimerState build() {
    initProtoHandler(
      onDispose: ref.onDispose,
      eventStream: messenger.onEvent
          .parse(App_UEvent.new)
          .route((e) => e.hasTimer(), (e) => e.timer),
    );
    return const TimerState();
  }

  @override
  void onTick(Timer_UEvent_Tick event) {
    state = state.copyWith(elapsed: event.elapsed);
  }

  @override
  void onMilestone(Timer_UEvent_Milestone event) {
    state = state.copyWith(milestones: [...state.milestones, event.count]);
  }
}
