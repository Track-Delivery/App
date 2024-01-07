import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:track_app/presentation/onboarding_screen_one_screen/models/onboarding_screen_one_model.dart';

/// A controller class for the OnboardingScreenOneScreen.
///
/// This class manages the state of the OnboardingScreenOneScreen, including the
/// current onboardingScreenOneModelObj
class OnboardingScreenOneController extends GetxController {
  Rx<OnboardingScreenOneModel> onboardingScreenOneModelObj =
      OnboardingScreenOneModel().obs;
}
