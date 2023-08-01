// ignore_for_file: non_constant_identifier_names

import '../models/self_report_item_model.dart';
import '../models/self_report_model.dart';
import 'self_report_event.dart';
import 'self_report_state.dart';
import 'package:bloc/bloc.dart';

class SelfReportBloc extends Bloc<SelfReportEvent, SelfReportState> {
  SelfReportBloc(SelfReportState initialState) : super(initialState) {
    on<SelfReportInitialEvent>(_onInitialize);
  }

  void _onInitialize(SelfReportInitialEvent event, Emitter<SelfReportState> emit) async {
    List<SelfReportItemModel> selfReportItemList = SelfReportItemList();
    emit(SelfReportState(selfReportModelObj: SelfReportModel(
      selfReportItemList: selfReportItemList,
    )));
  }

List<SelfReportItemModel> SelfReportItemList() {
    return [
      SelfReportItemModel(id: "unique_id_1", question: "I have felt upset."),
      SelfReportItemModel(id: "unique_id_2", question: "I have felt anxious."),
      SelfReportItemModel(id: "unique_id_3", question: "I have felt tearful."),
      SelfReportItemModel(id: "unique_id_4", question: "I have felt uneasy."),
      SelfReportItemModel(
          id: "unique_id_5", question: "I have been feeling overwhelmed."),
      SelfReportItemModel(id: "unique_id_6", question: "I have felt afraid."),
      SelfReportItemModel(
          id: "unique_id_7", question: "I have been unable to concentrate."),
      SelfReportItemModel(id: "unique_id_8",
          question: "My thoughts have been mostly negative."),
      SelfReportItemModel(
          id: "unique_id_9", question: "My thoughts have been racing."),
      SelfReportItemModel(id: "unique_id_10", question: "I have been worried."),
      SelfReportItemModel(id: "unique_id_11",
          question: "I have been thinking over and over about things that have upset me."),
      SelfReportItemModel(
          id: "unique_id_12", question: "I have been easily distracted."),
      SelfReportItemModel(id: "unique_id_13",
          question: "I have been thinking over and over about things that have made me nervous."),
      SelfReportItemModel(id: "unique_id_14",
          question: "I have found it difficult to shake off negative feelings."),
      SelfReportItemModel(id: "unique_id_15",
          question: "I have found it difficult to shake off negative thoughts."),
      SelfReportItemModel(id: "unique_id_16",
          question: "I have experienced breathing difficulties (e.g., fast or heavy breathing, shortness of breath) even in the absence of physical exertion."),
      SelfReportItemModel(id: "unique_id_17",
          question: "I have My heart has been beating fast even in the absence of physical exertion."),
      SelfReportItemModel(id: "unique_id_18",
          question: "I have  I have felt tension in the muscles of my body (e.g., tension in the neck or shoulders)."),
      SelfReportItemModel(id: "unique_id_19",
          question: "I have I have had abdominal pains (e.g., stomach cramps or a dull ache in the tummy)."),
      SelfReportItemModel(
          id: "unique_id_20", question: "My mouth has felt dry."),
      SelfReportItemModel(id: "unique_id_21",
          question: "I have vomited or felt like vomiting."),
      SelfReportItemModel(
          id: "unique_id_22", question: "I have felt chest pains."),
      SelfReportItemModel(id: "unique_id_23",
          question: "I have been experiencing pulsing in my ears."),
      SelfReportItemModel(
          id: "unique_id_24", question: "My heart has been racing."),
      SelfReportItemModel(id: "unique_id_25",
          question: "In general, I have been sweating more than usual."),
      SelfReportItemModel(id: "unique_id_26",
          question: "I have had difficulty swallowing foods, without any apparent physical reason."),
      SelfReportItemModel(id: "unique_id_27",
          question: "I have had a pounding feeling in my head or chest."),
      SelfReportItemModel(
          id: "unique_id_28", question: "I have felt lightheaded or dizzy."),
      SelfReportItemModel(id: "unique_id_29", question: "I have felt tired."),
      SelfReportItemModel(
          id: "unique_id_30", question: "I have been shaking or shivering."),
    ];
  }
}
