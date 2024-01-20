import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';

class TCustomButton extends StatelessWidget {
  const TCustomButton({
    super.key, required this.text, this.width = 100, this.height = 30, this.onPressed,
  });
final String text;
final double width, height;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: TColors.dark,
            borderRadius: BorderRadius.circular(TSizes.lg)),
        child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: TColors.white),
            )),
      ),
    );
  }
}
