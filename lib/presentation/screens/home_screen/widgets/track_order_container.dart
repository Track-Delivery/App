import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';

class TTrackOrder extends StatelessWidget {
  const TTrackOrder({
    super.key, required this.title, required this.subtitle, required this.buttonText, this.buttonColor = TColors.dark, this.onPressed,
  });
  final String title, subtitle, buttonText;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(TSizes.md),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(color: TColors.primaryBackground, borderRadius: BorderRadius.circular(TSizes.md)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.black,fontWeightDelta: 14),),
                Text(subtitle, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.darkGrey),),
              ],),
            GestureDetector(
              onTap: onPressed,
              child: Container(
                decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(TSizes.md)),
                width: 90,
                height: 25,
                child: Center(child: Text(buttonText, style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),)),
              ),
            ),
          ],
        )
    );
  }
}
