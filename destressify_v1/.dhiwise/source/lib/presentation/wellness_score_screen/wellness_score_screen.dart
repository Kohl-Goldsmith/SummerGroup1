import 'bloc/wellness_score_bloc.dart';
import 'models/wellness_score_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:destressify/widgets/app_bar/appbar_image.dart';
import 'package:destressify/widgets/app_bar/custom_app_bar.dart';
import 'package:destressify/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WellnessScoreScreen extends StatelessWidget {
  const WellnessScoreScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WellnessScoreBloc>(
        create: (context) => WellnessScoreBloc(
            WellnessScoreState(wellnessScoreModelObj: WellnessScoreModel()))
          ..add(WellnessScoreInitialEvent()),
        child: WellnessScoreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WellnessScoreBloc, WellnessScoreState>(
        builder: (context, state) {
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
                      margin: getMargin(left: 14)),
                  centerTitle: true,
                  title: Text("lbl_wellness_score".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextThemeHelper.titleMediumPoppinsGray900),
                  actions: [
                    AppbarImage(
                        height: getVerticalSize(26),
                        width: getHorizontalSize(29),
                        svgPath: ImageConstant.imgOverflowmenu,
                        margin:
                            getMargin(left: 36, top: 6, right: 36, bottom: 4),
                        onTap: () {
                          onTapOverflowmenu2(context);
                        })
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 13, top: 32, right: 13, bottom: 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(206),
                            margin: getMargin(left: 7),
                            child: Text("msg_self_percepted_stress".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    TextThemeHelper.titleMediumBluegray90001)),
                        Container(
                            margin: getMargin(left: 1, top: 21),
                            padding: getPadding(top: 6, bottom: 6),
                            decoration: AppDecoration.fill1.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 11, bottom: 11),
                                      child: Text("lbl_week_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(1.0)))),
                                  CustomElevatedButton(
                                      text: "lbl_week_2".tr,
                                      buttonStyle: ButtonThemeHelper
                                          .outlineBlack900
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      getHorizontalSize(84),
                                                      getVerticalSize(38)))),
                                      buttonTextStyle: TextThemeHelper
                                          .labelMediumIndigoA200),
                                  Padding(
                                      padding: getPadding(top: 11, bottom: 11),
                                      child: Text("lbl_week_3".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(1.0)))),
                                  Padding(
                                      padding: getPadding(top: 11, bottom: 11),
                                      child: Text("lbl_week_4".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(1.0))))
                                ])),
                        Padding(
                            padding: getPadding(left: 9, top: 9, right: 7),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Padding(
                                            padding: getPadding(bottom: 14),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_100".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextThemeHelper
                                                          .bodySmallRobotoErrorContainer),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 37),
                                                      child: Text("lbl_75".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextThemeHelper
                                                              .bodySmallRobotoErrorContainer)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 35),
                                                      child: Text("lbl_50".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextThemeHelper
                                                              .bodySmallRobotoErrorContainer)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Text("lbl_25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextThemeHelper
                                                              .bodySmallRobotoErrorContainer)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Text("lbl_0".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextThemeHelper
                                                              .bodySmallRobotoErrorContainer))
                                                ])),
                                        Expanded(
                                            child: Padding(
                                                padding:
                                                    getPadding(left: 7, top: 6),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  193),
                                                          width:
                                                              getHorizontalSize(
                                                                  289),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: SizedBox(
                                                                        height: getVerticalSize(
                                                                            193),
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                getHorizontalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                48),
                                                                        child: SizedBox(
                                                                            height: getVerticalSize(
                                                                                193),
                                                                            child: VerticalDivider(
                                                                                width: getHorizontalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                96),
                                                                        child: SizedBox(
                                                                            height: getVerticalSize(
                                                                                193),
                                                                            child: VerticalDivider(
                                                                                width: getHorizontalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: SizedBox(
                                                                        height: getVerticalSize(
                                                                            193),
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                getHorizontalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            right:
                                                                                95),
                                                                        child: SizedBox(
                                                                            height: getVerticalSize(
                                                                                193),
                                                                            child: VerticalDivider(
                                                                                width: getHorizontalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            right:
                                                                                47),
                                                                        child: SizedBox(
                                                                            height: getVerticalSize(
                                                                                193),
                                                                            child: VerticalDivider(
                                                                                width: getHorizontalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                46),
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                289),
                                                                            child: Divider(
                                                                                height: getVerticalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: SizedBox(
                                                                        width: getHorizontalSize(
                                                                            289),
                                                                        child: Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                49),
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                289),
                                                                            child: Divider(
                                                                                height: getVerticalSize(1),
                                                                                thickness: getVerticalSize(1),
                                                                                color: appTheme.gray20002)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: SizedBox(
                                                                        width: getHorizontalSize(
                                                                            289),
                                                                        child: Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: SizedBox(
                                                                        height: getVerticalSize(
                                                                            193),
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                getHorizontalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArea,
                                                                    height:
                                                                        getVerticalSize(
                                                                            98),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            289),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgAreaPurple100,
                                                                    height:
                                                                        getVerticalSize(
                                                                            160),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            289),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter)
                                                              ])),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          width:
                                                              getHorizontalSize(
                                                                  289),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: SizedBox(
                                                                        width: getHorizontalSize(
                                                                            289),
                                                                        child: Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: SizedBox(
                                                                        width: getHorizontalSize(
                                                                            289),
                                                                        child: Divider(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            thickness: getVerticalSize(1),
                                                                            color: appTheme.gray20002)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text("lbl_s".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: TextThemeHelper
                                                                        .bodySmallRobotoErrorContainer),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            41),
                                                                    child: Text(
                                                                        "lbl_m"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            40),
                                                                    child: Text(
                                                                        "lbl_t"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            41),
                                                                    child: Text(
                                                                        "lbl_w"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            37),
                                                                    child: Text(
                                                                        "lbl_th"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            39),
                                                                    child: Text(
                                                                        "lbl_f"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            29),
                                                                    child: Text(
                                                                        "lbl_sat"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextThemeHelper
                                                                            .bodySmallRobotoErrorContainer))
                                                              ]))
                                                    ])))
                                      ])),
                                  SizedBox(
                                      height: getVerticalSize(218),
                                      child: VerticalDivider(
                                          width: getHorizontalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: appTheme.gray20002,
                                          indent: getHorizontalSize(6),
                                          endIndent: getHorizontalSize(19)))
                                ])),
                        Padding(
                            padding: getPadding(left: 10, top: 24),
                            child: Text("lbl_today".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium)),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapRowiwatchreport(context);
                                },
                                child: Container(
                                    margin:
                                        getMargin(left: 16, top: 18, right: 15),
                                    padding: getPadding(
                                        left: 9, top: 26, right: 9, bottom: 26),
                                    decoration: AppDecoration.outline6,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "lbl_iwatch_report2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .bodyLargePoppinsBlack900)),
                                          Container(
                                              height: getVerticalSize(28),
                                              width: getHorizontalSize(104),
                                              margin: getMargin(right: 20),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    20),
                                                            width:
                                                                getHorizontalSize(
                                                                    104),
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .blueGray100,
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .pink100,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    strokeAlign:
                                                                        strokeAlignCenter),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: appTheme
                                                                          .black900
                                                                          .withOpacity(
                                                                              0.25),
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              4))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                right: 27),
                                                            child: Text(
                                                                "lbl_low".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextThemeHelper
                                                                    .bodyLargePoppinsBlack900)))
                                                  ]))
                                        ])))),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapRowselfreport(context);
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 22,
                                        right: 15,
                                        bottom: 5),
                                    padding: getPadding(
                                        left: 18,
                                        top: 26,
                                        right: 18,
                                        bottom: 26),
                                    decoration: AppDecoration.outline7,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_self_report2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .bodyLargePoppinsBlack900)),
                                          Container(
                                              height: getVerticalSize(28),
                                              width: getHorizontalSize(104),
                                              margin: getMargin(
                                                  right: 7, bottom: 1),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    20),
                                                            width:
                                                                getHorizontalSize(
                                                                    104),
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .blueGray100,
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .indigoA200,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    strokeAlign:
                                                                        strokeAlignCenter),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: appTheme
                                                                          .black900
                                                                          .withOpacity(
                                                                              0.25),
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              4))
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_low".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextThemeHelper
                                                                .bodyLargePoppinsBlack900))
                                                  ]))
                                        ]))))
                      ]))));
    });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homePageScreen.
  onTapOverflowmenu2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the iwatchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the iwatchScreen.
  onTapRowiwatchreport(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iwatchScreen,
    );
  }

  /// Navigates to the iwatchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the selfReportScreen.
  onTapRowselfreport(BuildContext context) {
    NavigatorService.pushNamed(
        AppRoutes.selfReportScreen,
  }
}

