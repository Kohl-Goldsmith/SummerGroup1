// ignore_for_file: non_constant_identifier_names

// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import '/core/app_export.dart';
import '../models/iwatch_item_model.dart';
import 'package:destressify/presentation/iwatch_screen/models/iwatch_model.dart';
import 'iwatch_event.dart';
import 'iwatch_state.dart';
import 'package:bloc/bloc.dart';

/// A bloc that manages the state of a Iwatch according to the event that is dispatched to it.
class IwatchBloc extends Bloc<IwatchEvent, IwatchState> {
  IwatchBloc(IwatchState initialState) : super(initialState) {
    on<IwatchInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    IwatchInitialEvent event,
    Emitter<IwatchState> emit,
  ) async {
    List<IwatchItemModel> iwatchItemList = IwatchItemList();
    emit(IwatchState(iwatchModelObj: IwatchModel(
      iwatchItemList: iwatchItemList,
    )));
  }

  List<IwatchItemModel> IwatchItemList() {
    return [
      IwatchItemModel(typeTxt: "Heart Rate", valueTxt: " ", unitTxt: "bpm" ),
      IwatchItemModel(typeTxt: "Temperature", valueTxt: " ", unitTxt: " °F" ),
      IwatchItemModel(typeTxt: "Sleep", valueTxt: " ", unitTxt: "hrs" ),
      IwatchItemModel(typeTxt: "Walking", valueTxt: " ", unitTxt: "steps " ),
    ];
  }
}
