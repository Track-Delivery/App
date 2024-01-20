import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, this.textColor, this.showActionButton = false, this.buttonText = "View all", this.onPressed, required this.title,
  });
  final Color? textColor;
  final bool showActionButton;
  final String buttonText, title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis ,),
        if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}

