import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';

class TEngagements extends StatelessWidget {
  const TEngagements({
    super.key, required this.title, required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(title, style: Theme.of(context).textTheme.headlineLarge!.apply(color: TColors.dark),),
      const SizedBox(height: TSizes.sm,),
      Text(subtitle, style: Theme.of(context).textTheme.titleSmall),
    ],);
  }
}
