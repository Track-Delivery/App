import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';


class TProfileMenus extends StatelessWidget {
  const TProfileMenus({
    super.key, required this.title, required this.prefixIcon, this.suffixIcon = CupertinoIcons.right_chevron, required this.onPressed,
  });
  final String title;
  final IconData prefixIcon, suffixIcon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
        decoration: BoxDecoration(color: TColors.primaryBackground, borderRadius: BorderRadius.circular(TSizes.lg)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [Icon(prefixIcon, color: TColors.dark,),const SizedBox(width: TSizes.sm,), Text(title, style: Theme.of(context).textTheme.titleMedium),],),
            Icon(suffixIcon, color: TColors.dark,),
          ],
        ),
      ),
    );
  }
}
