/// Abstract class for all events that can be dispatched from the
///Iwatch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
/// Event that is dispatched when the Iwatch widget is first created.

import 'package:equatable/equatable.dart';

abstract class IwatchEvent extends Equatable {}

class IwatchInitialEvent extends IwatchEvent {
  @override
  List<Object?> get props => [];
}
