import '../models/self_report_model.dart';
import 'package:equatable/equatable.dart';

class SelfReportState extends Equatable {
  final SelfReportModel selfReportModelObj;

  SelfReportState({required this.selfReportModelObj});

  @override
  List<Object?> get props => [selfReportModelObj];

  SelfReportState copyWith({SelfReportModel? selfReportModelObj}) {
    return SelfReportState(
      selfReportModelObj: selfReportModelObj ?? this.selfReportModelObj,
    );
  }
}
