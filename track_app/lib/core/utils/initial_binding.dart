import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:track_app/core/network/network_info.dart';
import 'package:track_app/core/utils/pref_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());

    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
