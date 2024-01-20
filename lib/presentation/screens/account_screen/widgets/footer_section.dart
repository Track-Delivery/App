import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../widgets/images/rounded_image.dart';

class TFooterSection extends StatelessWidget {
  const TFooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.lg),
      height: 95,
      width: double.infinity,
      decoration: BoxDecoration(color: TColors.primaryBackground, borderRadius: BorderRadius.circular(TSizes.md)),
      child: Row(children: [
        const TRoundedImage(imageUrl: TImages.banner3,width: 65,height: 65,borderRadius: TSizes.lg,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Aircraft", style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: TSizes.sm/2,),
            const Text("blablablabla"),
          ],)
      ],),

    );
  }
}

