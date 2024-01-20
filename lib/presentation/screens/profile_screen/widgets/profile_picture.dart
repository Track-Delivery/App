import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class TProfilePicture extends StatelessWidget {
  const TProfilePicture({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const CircleAvatar(backgroundColor: TColors.dark, radius: 58,),
          Positioned(
            left: 3,
            top: 3,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage(image),),
          ),
        ]
    );
  }
}
