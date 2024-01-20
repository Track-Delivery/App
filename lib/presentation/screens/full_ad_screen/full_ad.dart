import 'package:flutter/material.dart';
import 'package:track/core/constants/image_strings.dart';
import 'package:track/core/constants/sizes.dart';
import 'package:track/widgets/appbar/appbar.dart';

class FullAd extends StatelessWidget {
  const FullAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.cancel))],),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          Image(image: AssetImage(TImages.onBoardingImage2)),
        ],),
      ),
    );
  }
}
