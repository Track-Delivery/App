import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:track/core/constants/colors.dart';
import 'package:track/core/constants/sizes.dart';
import 'package:track/core/constants/text_string.dart';
import 'package:track/presentation/screens/home_screen/widgets/banner_slide.dart';
import 'package:track/presentation/screens/home_screen/widgets/track_order_container.dart';
import 'package:track/widgets/appbar/appbar.dart';
import 'package:track/widgets/images/vertical_image_text.dart';
import 'package:track/widgets/text_widgets/section_heading.dart';
import '../../../core/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.light,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,),
          child: Column(
            children: [

              /// App Bar text
              TAppBar(title: Text(TTexts.homeAppBarTitle,
                style: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.black),),),

              /// Home title
              Text(TTexts.homeTitle,
                style: Theme.of(context).textTheme.titleLarge!.apply(color: TColors.black),),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Search box text field
              TextFormField(decoration: const InputDecoration(hintText: TTexts.labelText, suffixIcon: Icon(Iconsax.scan))),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// scrollable banner
              const Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3]),),

              /// section heading and view all
              const TSectionHeading(title: TTexts.ourServices, textColor: TColors.black, showActionButton: true, buttonText: TTexts.viewAll),
              const SizedBox(height: TSizes.spaceBtwItems/2,),

              /// scrollable categories
              SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return TVerticalImageText(onTap: () {},backgroundColor: TColors.primaryBackground,
                          image: TImages.category2,
                          title: TTexts.category1Title,
                          subtitle: TTexts.category1SubTitle);
                    }),),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// section description and view all
              const TSectionHeading(title: TTexts.recentActivities, showActionButton: true, buttonText: TTexts.viewAll ,),
              const SizedBox(height: TSizes.spaceBtwItems/2,),

              /// track orders
              TTrackOrder(title: TTexts.trackNo1, subtitle: TTexts.recentActivitiesSubTitle1,buttonText: TTexts.onTheWay,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TTrackOrder(title: TTexts.trackNo2, subtitle: TTexts.recentActivitiesSubTitle2,buttonText: TTexts.cancel,onPressed: (){},buttonColor: Colors.green),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TTrackOrder(title: TTexts.trackNo1, subtitle: TTexts.recentActivitiesSubTitle1,buttonText: TTexts.onTheWay,onPressed: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TTrackOrder(title: TTexts.trackNo2, subtitle: TTexts.recentActivitiesSubTitle2,buttonText: TTexts.cancel,onPressed: (){},buttonColor: Colors.green),
              const SizedBox(height: TSizes.spaceBtwItems,),
            ],
          ),
        ),
      ),);
  }
}

