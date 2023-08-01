import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:destressify/presentation/wellness_score_screen/models/wellness_score_model.dart';
part 'wellness_score_event.dart';
part 'wellness_score_state.dart';

/// A bloc that manages the state of a WellnessScore according to the event that is dispatched to it.
class WellnessScoreBloc extends Bloc<WellnessScoreEvent, WellnessScoreState> {
  WellnessScoreBloc(WellnessScoreState initialState) : super(initialState) {
    on<WellnessScoreInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WellnessScoreInitialEvent event,
    Emitter<WellnessScoreState> emit,
  ) async {}
}
