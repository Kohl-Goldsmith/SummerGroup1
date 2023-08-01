import 'package:destressify/presentation/iwatch_screen/bloc/iwatch_event.dart';
import '../iwatch_screen/widgets/iwatch_item_widget.dart';
import 'bloc/iwatch_bloc.dart';
import 'models/iwatch_item_model.dart';
import 'bloc/iwatch_state.dart';
import 'models/iwatch_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:destressify/widgets/app_bar/appbar_image.dart';
import 'package:destressify/widgets/app_bar/custom_app_bar.dart';
import 'package:destressify/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class IwatchScreen extends StatelessWidget {
  const IwatchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IwatchBloc>(
        create: (context) =>
            IwatchBloc(IwatchState(iwatchModelObj: IwatchModel()))
              ..add(IwatchInitialEvent()),
        child: IwatchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: BlocProvider(
            create: (context) => IwatchBloc(
             IwatchState(iwatchModelObj: IwatchModel(
                iwatchItemList: [
                  IwatchItemModel(typeTxt: "Heart Rate", valueTxt: " ", unitTxt: "bpm" ),
                  IwatchItemModel(typeTxt: "Temperature", valueTxt: " ", unitTxt: "°F" ),
                  IwatchItemModel(typeTxt: "Sleep", valueTxt: " ", unitTxt: "hrs" ),
                  IwatchItemModel(typeTxt: "Walking", valueTxt: " ", unitTxt: "steps " ),
                ],
              )),
            ),
            child: IwatchScreenContent(), // Use a separate widget to avoid conflicts with Scaffold
          ),
        ));
  }
}
class IwatchScreenContent extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(top: 3, bottom: 3),
                                    decoration: AppDecoration.outline4,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(36),
                                              leadingWidth: 66,
                                              leading: AppbarImage(
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(40),
                                                  svgPath: ImageConstant.imgMenu,
                                                  margin: getMargin(left: 26),
                                                  onTap: () {
                                                    onTapmenu(context);
                                                  }),
                                              centerTitle: true,

                                              title: Text("lbl_iwatch".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .titleMediumPoppinsBluegray90001),

                                              actions: [
                                                AppbarImage(
                                                    height: getVerticalSize(26),
                                                    width: getHorizontalSize(29),
                                                    svgPath: ImageConstant
                                                        .imgOverflowmenu,
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 7,
                                                        right: 24,
                                                        bottom: 3),
                                                    onTap: () {
                                                      onTapOverflowmenu(context);
                                                    })
                                              ]),
                                          Container(
                                              margin: getMargin(
                                                  left: 18, top: 27, right: 15),
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 17,
                                                  right: 12,
                                                  bottom: 17),
                                              decoration: AppDecoration.outline3
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder12),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          166),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              6),
                                                                  child: Text(
                                                                      "msg_mauris_eu_odio_in"
                                                                          .tr,
                                                                      maxLines: 3,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: TextThemeHelper
                                                                          .bodySmallPoppinsGray500)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left: 6,
                                                                          top: 9),
                                                                  child: RichText(
                                                                      text: TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                                text: "lbl_hello".tr,
                                                                                style: TextStyle(color: appTheme.blueGray90001, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                            TextSpan(
                                                                                text: "lbl_emma_mabel2".tr,
                                                                                style: TextStyle(color: appTheme.blueGray90001, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                          ]),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left)),
                                                              CustomElevatedButton(
                                                                  text:
                                                                      "lbl_sync_to_iwatch"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          top: 7),
                                                                  buttonStyle: ButtonThemeHelper
                                                                      .fillIndigoA200TL17
                                                                      .copyWith(
                                                                          fixedSize: MaterialStateProperty.all<Size>(Size(
                                                                              getHorizontalSize(
                                                                                  145),
                                                                              getVerticalSize(
                                                                                  35)))),
                                                                  buttonTextStyle:
                                                                      TextThemeHelper
                                                                          .labelMediumPrimary)
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgBreathe202211,
                                                        height:
                                                            getVerticalSize(106),
                                                        width: getHorizontalSize(
                                                            124),
                                                        radius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    12)),
                                                        margin: getMargin(
                                                            left: 4,
                                                            top: 6,
                                                            right: 1,
                                                            bottom: 17))
                                                  ])),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 35,
                                                      right: 13,
                                                      bottom: 19),
                                                  child: BlocSelector<
                                                          IwatchBloc,
                                                          IwatchState,
                                                          IwatchModel?>(
                                                      selector: (state) =>
                                                          state.iwatchModelObj,
                                                      builder: (context,
                                                          iwatchModelObj) {
                                                        return ListView.separated(
                                                            physics:
                                                                BouncingScrollPhysics(),
                                                            shrinkWrap: true,
                                                            separatorBuilder:
                                                                (context, index) {
                                                              return SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          43));
                                                            },
                                                            itemCount: iwatchModelObj
                                                                    ?.iwatchItemList
                                                                    .length ??
                                                                0,
                                                            itemBuilder:
                                                                (context, index) {
                                                              IwatchItemModel
                                                                  model =
                                                                  iwatchModelObj
                                                                              ?.iwatchItemList[
                                                                          index] ??
                                                                      IwatchItemModel(typeTxt: " ", valueTxt: " ", unitTxt: " ");
                                                              return IwatchItemWidget(
                                                                  model);
                                                            });
                                                      })))
                                        ]))))
                      ]))));
    }

    /// Navigates to the homePageScreen when the action is triggered.
    ///
    /// The [BuildContext] parameter is used to build the navigation stack.
    /// When the action is triggered, this function uses the `NavigatorService`
    /// to push the named route for the homePageScreen.
    onTapmenu(BuildContext context) {
      NavigatorService.pushNamed(
        AppRoutes.homePageScreen,
      );
    }
    /// Navigates to the wellnessScoreScreen when the action is triggered.
    ///
    /// The [BuildContext] parameter is used to build the navigation stack.
    /// When the action is triggered, this function uses the `NavigatorService`
    /// to push the named route for the wellnessScoreScreen.
    onTapOverflowmenu(BuildContext context) {
      NavigatorService.pushNamed(
        AppRoutes.wellnessScoreScreen,
      );
    }
  }
