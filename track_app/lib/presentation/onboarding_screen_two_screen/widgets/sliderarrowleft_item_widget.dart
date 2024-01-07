import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:track_app/core/utils/size_utils.dart';
import 'package:track_app/themes/app_style.dart';
import 'package:track_app/widgets/custom_image_view.dart';

import '../controller/onboarding_screen_two_controller.dart';
import '../models/sliderarrowleft_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SliderarrowleftItemWidget extends StatelessWidget {
  SliderarrowleftItemWidget(
    this.sliderarrowleftItemModelObj, {
    Key? key,

  }) : super(
          key: key,
        );

  SliderarrowleftItemModel sliderarrowleftItemModelObj;

  var controller = Get.find<OnboardingScreenTwoController>();



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: sliderarrowleftItemModelObj.svgPath,
          height: getVerticalSize(
            130,
          ),
          width: getHorizontalSize(
            116,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 17,
          ),
          child: Text(
            sliderarrowleftItemModelObj.text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtH2,
          ),
        ),
      ],
    );
  }
}
