import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';

class TProfilePictureEdit extends StatelessWidget {
  const TProfilePictureEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Stack(
          children: [
            const CircleAvatar(backgroundColor: TColors.dark, radius: 58,),
            const Positioned(
              left: 3,
              top: 3,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(TImages.profile),),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: TColors.dark, borderRadius: BorderRadius.circular(100)),
                child: const Icon(Iconsax.camera),
              ),
            )
          ]
      ),
    );
  }
}
