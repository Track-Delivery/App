import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:track_app/core/utils/color_constant.dart';
import 'package:track_app/core/utils/image_constant.dart';
import 'package:track_app/core/utils/size_utils.dart';
import 'package:track_app/themes/app_style.dart';
import 'package:track_app/widgets/custom_image_view.dart';

import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray90001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 204, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: '', height: getSize(120), width: getSize(120)),
              Text("Track Delivery",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSatoshiBlack36),
              Padding(
                padding: getPadding(top: 28, bottom: 5),
                child: Container(
                  height: getVerticalSize(7),
                  width: getHorizontalSize(326),
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700C1,
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(3))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(getHorizontalSize(3)),
                    child: Obx(
                      () => LinearProgressIndicator(
                          value: controller.progress.value,
                          backgroundColor: ColorConstant.whiteA700C1,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              ColorConstant.cyan300)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
