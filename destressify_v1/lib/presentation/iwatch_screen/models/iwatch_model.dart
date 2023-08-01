// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'iwatch_item_model.dart';

/// This class defines the variables used in the [iwatch_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IwatchModel extends Equatable {
  IwatchModel({this.iwatchItemList = const []});

  List<IwatchItemModel> iwatchItemList;

  IwatchModel copyWith({List<IwatchItemModel>? iwatchItemList}) {
    return IwatchModel(
      iwatchItemList: iwatchItemList ?? this.iwatchItemList,
    );
  }

  @override
  List<Object?> get props => [iwatchItemList];
}
