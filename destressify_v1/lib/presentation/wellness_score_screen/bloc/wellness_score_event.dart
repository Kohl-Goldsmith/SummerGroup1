// ignore_for_file: must_be_immutable

part of 'wellness_score_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WellnessScore widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WellnessScoreEvent extends Equatable {}

/// Event that is dispatched when the WellnessScore widget is first created.
class WellnessScoreInitialEvent extends WellnessScoreEvent {
  @override
  List<Object?> get props => [];
}
