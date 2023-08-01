import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: getVerticalSize(750),
                            width: getHorizontalSize(359),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRelaxedcalmwo,
                                      height: getVerticalSize(800),
                                      width: getHorizontalSize(359),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: getPadding(
                                              right: 11, bottom: 318),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(41),
                                                    margin: getMargin(
                                                        top: 9, bottom: 18),
                                                    padding: getPadding(
                                                        left: 9,
                                                        top: 1,
                                                        right: 9,
                                                        bottom: 1),
                                                    decoration: AppDecoration
                                                        .txtFill
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtCircleBorder20),
                                                    child: Text("lbl_d".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .headlineMedium)),
                                                Text("lbl_destressify".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .displayMedium)
                                              ])))
                                ]))
                      ]))));
    });
  }
}
