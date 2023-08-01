import '../models/iwatch_model.dart';
import 'package:equatable/equatable.dart';

class IwatchState extends Equatable {
  final IwatchModel iwatchModelObj;

  IwatchState({required this.iwatchModelObj});

  @override
  List<Object?> get props => [iwatchModelObj];

  IwatchState copyWith({IwatchModel? iwatchModelObj}) {
    return IwatchState(
      iwatchModelObj: iwatchModelObj ?? this.iwatchModelObj,
    );
  }
}

