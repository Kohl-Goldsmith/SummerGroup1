import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:destressify/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) =>
            HomePageBloc(HomePageState(homePageModelObj: HomePageModel()))
              ..add(HomePageInitialEvent()),
        child: HomePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: appTheme.gray50001,
                          width: getHorizontalSize(1)),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.deepPurpleA200,
                            theme.colorScheme.primaryContainer,
                            theme.colorScheme.onErrorContainer
                          ])),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 18, top: 42, right: 18, bottom: 42),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgAfricanyoungw,
                                height: getVerticalSize(102),
                                width: getHorizontalSize(140),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(51)),
                                margin: getMargin(left: 1)),
                            Padding(
                                padding: getPadding(left: 8, top: 33),
                                child: Text("lbl_emma_mabel".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextThemeHelper.titleMediumPrimary)),
                            Padding(
                                padding: getPadding(left: 10, top: 8),
                                child: Text("lbl_houghton_mi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextThemeHelper.bodyLarge16)),
                            CustomElevatedButton(
                                text: "lbl_self_report".tr,
                                margin: getMargin(top: 28),
                                leftIcon: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFire)),
                                buttonStyle: ButtonThemeHelper.none.copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(98),
                                            getVerticalSize(29)))),
                                buttonTextStyle: theme.textTheme.bodyLarge!,
                                onTap: () {
                                  onTapSelfReport(context);
                                }),
                            CustomElevatedButton(
                                text: "lbl_iwatch".tr,
                                margin: getMargin(top: 28),
                                leftIcon: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSamrtwatch)),
                                buttonStyle: ButtonThemeHelper.none.copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(98),
                                            getVerticalSize(29)))),
                                buttonTextStyle: theme.textTheme.bodyLarge!,
                                onTap: () {
                                  onTapIwatch(context);
                                }),
                            CustomElevatedButton(
                                text: "lbl_wellness_score".tr,
                                margin: getMargin(top: 28),
                                leftIcon: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMap)),
                                buttonStyle: ButtonThemeHelper.none.copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(98),
                                            getVerticalSize(29)))),
                                buttonTextStyle: theme.textTheme.bodyLarge!,
                                onTap: () {
                                  onTapWellnessscore(context);
                                }),
                            CustomElevatedButton(
                                text: "lbl_sign_out".tr,
                                margin: getMargin(top: 28),
                                leftIcon: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgRewind)),
                                buttonStyle: ButtonThemeHelper.none.copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(getHorizontalSize(98),
                                            getVerticalSize(29)))),
                                buttonTextStyle: theme.textTheme.bodyLarge!,
                                onTap: () {
                                  onTapSignout(context);
                                })
                          ])))));
    });
  }

  /// Navigates to the selfReportScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the iwatchScreen.
  onTapSelfReport(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selfReportScreen,
    );
  }

  /// Navigates to the iwatchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the iwatchScreen.
  onTapIwatch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iwatchScreen,
    );
  }

  /// Navigates to the wellnessScoreScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the wellnessScoreScreen.
  onTapWellnessscore(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wellnessScoreScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the signinScreen.
  onTapSignout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signinScreen,
    );
  }
}
