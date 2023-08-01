import 'bloc/signin_bloc.dart';
import 'models/signin_model.dart';
import 'package:destressify/core/app_export.dart';
import 'package:destressify/widgets/custom_elevated_button.dart';
// import 'package:destressify/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
// import 'package:destressify/domain/googleauth/google_auth_helper.dart';
// import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SigninBloc>(
        create: (context) =>
            SigninBloc(SigninState(signinModelObj: SigninModel()))
              ..add(SigninInitialEvent()),
        child: SigninScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigninBloc, SigninState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.black900,
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: appTheme.black900,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.25),
                            spreadRadius: getHorizontalSize(2),
                            blurRadius: getHorizontalSize(2),
                            offset: Offset(0, 4))
                      ],
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgSignin),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: getPadding(left: 13, right: 13),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_sign_in".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.headlineLarge),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 87),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCar,
                                          height: getVerticalSize(13),
                                          width: getHorizontalSize(10),
                                          margin: getMargin(top: 5, bottom: 4)),
                                      Padding(
                                          padding: getPadding(left: 18),
                                          child: Text("lbl_username".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextThemeHelper
                                                  .titleLargeRalewayPrimary))
                                    ]))),
                            Padding(
                                padding: getPadding(top: 18),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: theme.colorScheme.primary,
                                    indent: getHorizontalSize(16),
                                    endIndent: getHorizontalSize(5))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 17, top: 47),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgLock,
                                              height: getVerticalSize(14),
                                              width: getHorizontalSize(9),
                                              margin:
                                                  getMargin(top: 3, bottom: 5)),
                                          Padding(
                                              padding: getPadding(left: 18),
                                              child: Text("lbl_password".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextThemeHelper
                                                      .titleLargeRalewayPrimary))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 17),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary,
                                        indent: getHorizontalSize(16)))),
                            CustomElevatedButton(
                                text: "lbl_sign_in2".tr,
                                margin: getMargin(left: 9, top: 36, right: 10),
                                buttonStyle: ButtonThemeHelper.fillIndigoA200
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(double.maxFinite,
                                                    getVerticalSize(58)))),
                                buttonTextStyle: TextThemeHelper
                                    .titleLargeRalewayPrimaryMedium,
                                onTap: () {
                                  onTapSignin(context);
                                }),
                            // Padding(
                            //     padding: getPadding(left: 6, top: 34, right: 9),
                            //     child: Row(
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceBetween,
                            //         crossAxisAlignment:
                            //             CrossAxisAlignment.start,
                            //         children: [
                            //           Padding(
                            //               padding:
                            //                   getPadding(top: 4, bottom: 9),
                            //               child: SizedBox(
                            //                   width: getHorizontalSize(93),
                            //                   child: Divider(
                            //                       height: getVerticalSize(1),
                            //                       thickness: getVerticalSize(1),
                            //                       color: appTheme.gray20001))),
                            //           Text("lbl_or_sign_in_with".tr,
                            //               overflow: TextOverflow.ellipsis,
                            //               textAlign: TextAlign.left,
                            //               style: TextThemeHelper
                            //                   .bodySmallInterPrimary
                            //                   .copyWith(
                            //                       letterSpacing:
                            //                           getHorizontalSize(0.36))),
                            //           Padding(
                            //               padding:
                            //                   getPadding(top: 4, bottom: 9),
                            //               child: SizedBox(
                            //                   width: getHorizontalSize(92),
                            //                   child: Divider(
                            //                       height: getVerticalSize(1),
                            //                       thickness: getVerticalSize(1),
                            //                       color: appTheme.gray20001)))
                            //         ])),
                            // CustomOutlinedButton(
                            //     text: "msg_sign_in_with_google".tr,
                            //     margin: getMargin(left: 9, top: 21, right: 10),
                            //     buttonStyle: ButtonThemeHelper.outlinePrimary
                            //         .copyWith(
                            //             fixedSize:
                            //                 MaterialStateProperty.all<Size>(
                            //                     Size(double.maxFinite,
                            //                         getVerticalSize(58)))),
                            //     buttonTextStyle:
                            //         TextThemeHelper.titleMediumInterPrimary,
                            //     onTap: () {
                            //       onTapSigninwith(context);
                            //     }),
                            // CustomElevatedButton(
                            //     text: "msg_sign_in_with_facebook".tr,
                            //     margin: getMargin(
                            //         left: 9, top: 19, right: 10, bottom: 5),
                            //     buttonStyle: ButtonThemeHelper.fillIndigoA200
                            //         .copyWith(
                            //             fixedSize:
                            //                 MaterialStateProperty.all<Size>(
                            //                     Size(double.maxFinite,
                            //                         getVerticalSize(58)))),
                            //     buttonTextStyle: TextThemeHelper.bodyLargeInter,
                            //     onTap: () {
                            //       onTapSigninwith1(context);
                            //     })
                          ])))));
    });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homePageScreen.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  // /// Performs a Google sign-in and returns a [GoogleUser] object.
  // ///
  // /// If the sign-in is successful, the [onSuccess] callback will be called with
  // /// a to-do comment needed to be modified by you.
  // /// If the sign-in fails, the [onError] callback will be called with the error message.
  // ///
  // /// Throws an exception if the Google sign-in process fails.
  // onTapSigninwith(BuildContext context) async {
  //   await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
  //     if (googleUser != null) {
  //       return " ";
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(const SnackBar(content: Text('user data is empty')));
  //       return "error";
  //     }
  //   }).catchError((onError) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(onError.toString())));
  //     return "error";
  //   });
  // }
  //
  // /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  // ///
  // /// If the sign-in is successful, the [onSuccessFacebookAuthResponse] method is called
  // /// with the [FacebookUser] object and [context] as a parameters.
  // /// If the sign-in fails, the [onErrorFacebookAuthResponse] method is called with the [context] as a parameter.
  // ///
  // /// Throws an exception if the Facebook sign-in process fails.
  // onTapSigninwithfb(BuildContext context) async {
  //   await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
  //     onSuccessFacebookAuthResponse(facebookUser, context);
  //   }).catchError((onError) {
  //     onErrorFacebookAuthResponse(context);
  //   });
  // }
  //
  // /// Navigates to the homePageScreen when the action is triggered.
  //
  // /// When the action is triggered, this function uses the `NavigatorService`
  // /// to push the named route for the homePageScreen.
  // onSuccessFacebookAuthResponse(
  //     FacebookUser facebookUser,
  //     BuildContext context,
  //     ) {
  //   NavigatorService.pushNamed(
  //     AppRoutes.homePageScreen,
  //   );
  // }

  /// Navigates to the homePageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `NavigatorService`
  /// to push the named route for the homePageScreen.
  onTapSigninwith1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
