import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:track_app/core/utils/color_constant.dart';
import 'package:track_app/core/utils/image_constant.dart';
import 'package:track_app/core/utils/size_utils.dart';
import 'package:track_app/routes/app_routes.dart';
import 'package:track_app/themes/app_style.dart';
import 'package:track_app/widgets/custom_button.dart';
import 'package:track_app/widgets/custom_icon_button.dart';
import 'package:track_app/widgets/custom_image_view.dart';

import 'controller/onboarding_screen_one_controller.dart';
import 'package:flutter/material.dart';

class OnboardingScreenOneScreen
    extends GetWidget<OnboardingScreenOneController> {
  const OnboardingScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray90001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 20, top: 38, right: 20, bottom: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(left: 86),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgOnboardingvector,
                                height: getVerticalSize(130),
                                width: getHorizontalSize(150)),
                            CustomIconButton(
                                height: 29,
                                width: 28,
                                margin:
                                    getMargin(left: 57, top: 50, bottom: 51),
                                variant: IconButtonVariant.OutlineWhiteA7005e,
                                shape: IconButtonShape.RoundedBorder14,
                                padding: IconButtonPadding.PaddingAll8,
                                onTap: () {
                                  onTapBtnArrowleft();
                                },
                                child: CustomImageView(svgPath: ''))
                          ]))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 33, top: 17),
                      child: Text("Welcome Track Delivery",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtH2))),
              CustomImageView(
                  svgPath: '',
                  height: getVerticalSize(10),
                  width: getHorizontalSize(48),
                  margin: getMargin(top: 19)),
              CustomButton(
                  height: getVerticalSize(50),
                  text: "Explore More",
                  margin: getMargin(top: 89),
                  variant: ButtonVariant.Neutral,
                  padding: ButtonPadding.PaddingAll15,
                  fontStyle: ButtonFontStyle.SatoshiBold14,
                  onTap: () {
                    // onTapSignupasa();
                  }),
              CustomButton(
                  height: getVerticalSize(50),
                  text: "Welcome Track Delivery",
                  margin: getMargin(top: 34),
                  padding: ButtonPadding.PaddingAll15,
                  fontStyle: ButtonFontStyle.SatoshiBold14Gray90002,
                  onTap: () {
                    Get.toNamed(AppRoutes.loginScreen);
                    print('Hello');
                  }),
              GestureDetector(
                onTap: () {
                  onTapTxtAlreadyhavean();
                },
                child: Padding(
                  padding: getPadding(top: 126),
                  child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Already Have an Account",
                              style: TextStyle(
                                  color: ColorConstant.gray200,
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                  color: ColorConstant.cyan300,
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w300))
                        ],
                      ),
                      textAlign: TextAlign.left),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the onboardingScreenTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingScreenTwoScreen.
  onTapBtnArrowleft() {
    Get.toNamed(AppRoutes.onboardScreen_2);
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signUpScreen.
  /*
  onTapSignupasa() {
    Get.toNamed(
        //AppRoutes.signUpScreen,
        );
  }
  */

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signUpScreen.

  onTapSignupasan() {
    Get.toNamed(AppRoutes.onboardScreen_1);
  }

  /// Navigates to the logInScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the logInScreen.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
