import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../widgets/custom_shapes/containers/circular_container.dart';
import '../../../../widgets/images/rounded_image.dart';
import '../../../controllers/home_controller/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banners.map((e) =>  TRoundedImage(imageUrl: e)).toList()
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < banners.length; i++)
                    TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value==i? TColors.dark: TColors.grey),
            ],
          ),
        )
      ],
    );
  }
}
