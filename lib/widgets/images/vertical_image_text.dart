import 'package:flutter/material.dart';
import 'package:track/widgets/images/rounded_image.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/sizes.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    this.onTap,
    required this.subtitle,
    this.imageWidth = 50,
    this.imageHeight = 58,
    this.containerWidth = 120,
    this.containerHeight = 100,
    this.containerRadius = TSizes.sm,
    this.imageRadius = TSizes.sm,
  });

  final String image, title, subtitle;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final double? imageWidth, imageHeight, containerWidth, containerHeight;
  final double containerRadius, imageRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems / 2),
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(containerRadius)),
          width: containerWidth,
          height: containerHeight,
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Rounded image
              TRoundedImage(
                  imageUrl: image,
                  width: imageWidth,
                  height: imageHeight,
                  borderRadius: imageRadius),
              const SizedBox(height: TSizes.spaceBtwItems / 2,),

              /// Text Labels
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(title, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.black),),
                Text(subtitle, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.darkGrey),),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
