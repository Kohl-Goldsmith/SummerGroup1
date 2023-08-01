// ignore_for_file: must_be_immutable


import 'package:equatable/equatable.dart';

abstract class SelfReportEvent extends Equatable {}

class SelfReportInitialEvent extends SelfReportEvent {
  @override
  List<Object?> get props => [];
}
