// ignore_for_file: must_be_immutable

part of 'wellness_score_bloc.dart';

/// Represents the state of WellnessScore in the application.
class WellnessScoreState extends Equatable {
  WellnessScoreState({this.wellnessScoreModelObj});

  WellnessScoreModel? wellnessScoreModelObj;

  @override
  List<Object?> get props => [
        wellnessScoreModelObj,
      ];
  WellnessScoreState copyWith({WellnessScoreModel? wellnessScoreModelObj}) {
    return WellnessScoreState(
      wellnessScoreModelObj:
          wellnessScoreModelObj ?? this.wellnessScoreModelObj,
    );
  }
}
