// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'self_report_item_model.dart';

/// This class defines the variables used in the [self_report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelfReportModel extends Equatable {
  SelfReportModel({this.selfReportItemList = const []});

  List<SelfReportItemModel> selfReportItemList;

  SelfReportModel copyWith({List<SelfReportItemModel>? selfReportItemList}) {
    return SelfReportModel(
      selfReportItemList: selfReportItemList ?? this.selfReportItemList,
    );
  }

  @override
  List<Object?> get props => [selfReportItemList];
}
