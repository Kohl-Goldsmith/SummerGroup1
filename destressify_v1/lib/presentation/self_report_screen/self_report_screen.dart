import 'package:destressify/presentation/self_report_screen/bloc/self_report_event.dart';
import 'package:flutter/material.dart';
import 'package:destressify/core/app_export.dart';
import 'package:destressify/widgets/app_bar/appbar_image.dart';
import 'package:destressify/widgets/app_bar/custom_app_bar.dart';
import 'package:destressify/widgets/custom_outlined_button.dart';
import '../self_report_screen/widgets/self_report_item_widget.dart';
import 'bloc/self_report_bloc.dart';
import 'bloc/self_report_state.dart';
import 'models/self_report_item_model.dart';
import 'models/self_report_model.dart';

class SelfReportScreen extends StatelessWidget {
  const SelfReportScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SelfReportBloc>(
        create: (context) =>
        SelfReportBloc(SelfReportState(selfReportModelObj: SelfReportModel()))
          ..add(SelfReportInitialEvent()),
        child: SelfReportScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocProvider(
        create: (context) => SelfReportBloc(
          SelfReportState(selfReportModelObj: SelfReportModel(
            selfReportItemList: [
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
            ],
          )),
        ),
        child: SelfReportScreenContent(), // Use a separate widget to avoid conflicts with Scaffold
      ),
    ));
  }
}

class SelfReportScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: getVerticalSize(36),
          leadingWidth: 54,
          leading: AppbarImage(
              height: getVerticalSize(36),
              width: getHorizontalSize(40),
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(left: 14),
              onTap: () {
                onTapmenu(context);
              }),
          centerTitle: true,
          title: Text(
            "lbl_self_report".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextThemeHelper.titleMediumPoppinsBluegray90002,
          ),
          actions: [
            // AppbarImage(
            //     height: getVerticalSize(36),
            //     width: getHorizontalSize(40),
            //     svgPath: ImageConstant.imgMenu,
            //     margin: getMargin(left: 14),
            //     onTap: () {
            //       onTapmenu(context);
            //     }),
            AppbarImage(
              height: getVerticalSize(26),
              width: getHorizontalSize(29),
              svgPath: ImageConstant.imgOverflowmenu,
              margin: getMargin(left: 19, top: 10, right: 19, bottom: 16),
              onTap: () {
                onTapOverflowmenu(context);
              },
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomOutlinedButton(
                text: "msg_daily_stress_response".tr,
                margin: getMargin(left: 3, top: 4, right: 6),
                buttonStyle: ButtonThemeHelper.outlineGray200.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(28)),
                  ),
                ),
                buttonTextStyle: TextThemeHelper.titleSmallRalewayPrimary,
              ),
              Padding(
                padding: getPadding(left: 15, top: 9, right: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(165),
                      margin: getMargin(top: 6),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_for_each_question2".tr,
                              style: TextStyle(
                                color: appTheme.black900,
                                fontSize: getFontSize(10),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "lbl".tr,
                              style: TextStyle(
                                color: appTheme.black900,
                                fontSize: getFontSize(12),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomOutlinedButton(
                      text: "lbl_results".tr,
                      margin: getMargin(bottom: 6),
                      buttonStyle: ButtonThemeHelper.outlineGray200TL14.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(getHorizontalSize(79), getVerticalSize(28)),
                        ),
                      ),
                      buttonTextStyle: TextThemeHelper.bodySmallPoppinsOnPrimary,
                      onTap: () {
                        onTapResults(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(top: 10, right: 5),
                  child: BlocBuilder<SelfReportBloc, SelfReportState>(
                    builder: (context, state) {
                      final selfReportModelObj = state.selfReportModelObj;
                        return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(10));
                          },
                          itemCount: selfReportModelObj.selfReportItemList.length,
                          itemBuilder: (context, index) {
                            SelfReportItemModel model = selfReportModelObj.selfReportItemList[index];
                            return SelfReportItemWidget(model);
                          },
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
/// Navigates to the homepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homepageScreen.
  onTapmenu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the iwatchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the iwatchScreen.
  onTapOverflowmenu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iwatchScreen,
    );
  }

  /// Navigates to the wellnessScoreScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the wellnessScoreScreen.
  onTapResults(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wellnessScoreScreen,
    );
  }
}
