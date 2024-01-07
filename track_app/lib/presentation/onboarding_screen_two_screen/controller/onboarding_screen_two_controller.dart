import 'package:get/get.dart';

import 'package:track_app/core/utils/image_constant.dart';
import 'package:track_app/presentation/onboarding_screen_two_screen/models/onboarding_screen_two_model.dart';

/// A controller class for the OnboardingScreenTwoScreen.
///
/// This class manages the state of the OnboardingScreenTwoScreen, including the
/// current onboardingScreenTwoModelObj
class OnboardingScreenTwoController extends GetxController {
  late List<Map<String, String>> data;
  late Rx<OnboardingScreenTwoModel> onboardingScreenTwoModelObj;
  ImageConstant imageConstant = ImageConstant();

  OnboardingScreenTwoController() {
    data = [
      {'svg': ImageConstant.imgOnboardingvector, 'text': "Track Your Delivery"},
      {'svg': ImageConstant.imgOnboardingvector, 'text': "Track Your Delivery"},
      {'svg': ImageConstant.imgOnboardingvector, 'text': "Track Your Delivery"},
    ];

    onboardingScreenTwoModelObj = OnboardingScreenTwoModel(data).obs;
  }

  Rx<int> sliderIndex = 0.obs;
}
