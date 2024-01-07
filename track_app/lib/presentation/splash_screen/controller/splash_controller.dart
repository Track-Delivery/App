import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'dart:async';

import 'package:track_app/presentation/splash_screen/models/splash_model.dart';
import 'package:track_app/routes/app_routes.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  var progress = 0.0.obs;
  final storage = FlutterSecureStorage();

  void updateProgress(double value) {
    progress.value = value;
  }

  Future<void> _delayedProgressUpdate(
      int milliseconds, double increment) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
    progress.value += increment;
  }

  @override
  void onReady() async {
    String? token = await storage.read(key: "token");
    // await storage.write(key: 'activeProfile', value: null);
    String? activeProfile = await storage.read(key: "activeProfile");

    await _delayedProgressUpdate(2000, 0.2);
    await storage.write(key: 'activeProfile', value: null);

    if (token == null) {
      await _delayedProgressUpdate(1000, 0.8);
      Get.offNamed(AppRoutes.onboardScreen_1);
    } else {
      bool hasExpired = JwtDecoder.isExpired(token);

      await _delayedProgressUpdate(1000, 0.8);

      if (hasExpired == true) {
        print(hasExpired);
       // Get.offNamed(AppRoutes.);
      } else if (activeProfile == "Creator") {
       // Get.offNamed(AppRoutes.homeCreatorContainerScreen);
      } else if (activeProfile == null || activeProfile.isEmpty) {
       // Get.offNamed(AppRoutes.chooseProfile);
      } else {
        print(activeProfile);
       // Get.offNamed(AppRoutes.influencerTabScreen);
      }
    }
  }
}
