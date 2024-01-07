
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:track_app/presentation/onboarding_screen_three_screen/models/onboarding_screen_three_model.dart';

/// A controller class for the OnboardingScreenThreeScreen.
///
/// This class manages the state of the OnboardingScreenThreeScreen, including the
/// current onboardingScreenThreeModelObj
class OnboardingScreenThreeController extends GetxController {
  Rx<OnboardingScreenThreeModel> onboardingScreenThreeModelObj =
      OnboardingScreenThreeModel().obs;
}
