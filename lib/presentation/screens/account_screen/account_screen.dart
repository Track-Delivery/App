import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:track/core/constants/image_strings.dart';
import 'package:track/core/constants/sizes.dart';
import 'package:track/core/constants/text_string.dart';
import 'package:track/presentation/screens/account_screen/widgets/engagements.dart';
import 'package:track/presentation/screens/account_screen/widgets/footer_section.dart';
import 'package:track/presentation/screens/profile_screen/widgets/edit_profile_button.dart';
import 'package:track/presentation/screens/profile_screen/widgets/profile_picture.dart';
import 'package:track/widgets/appbar/appbar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        leadingIcon: CupertinoIcons.back,
        leadingOnPressed: () => Get.back(),
        title: const Text(TTexts.sampleEmail),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Iconsax.menu))],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            /// Header
            TProfilePicture(image: TImages.profile),
            SizedBox(height: TSizes.spaceBtwSections,),
            Text(TTexts.sampleUser),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.occupation),
            SizedBox(height: TSizes.spaceBtwSections,),
            TCustomButton(text: TTexts.addFriend, width: double.infinity,height: 50,),
            SizedBox(height: TSizes.spaceBtwSections,),
        
            /// Body
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                TEngagements(title: "96",subtitle: "Posts",),
                TEngagements(title: "120",subtitle: "Friends",),
                TEngagements(title: "2.4k",subtitle: "Likes",),
              ],),
            ),
            SizedBox(height: TSizes.spaceBtwSections,),
        
            /// Footer
            TFooterSection(),
            SizedBox(height: TSizes.spaceBtwItems,),
            TFooterSection(),
            SizedBox(height: TSizes.spaceBtwItems,),
            TFooterSection(),
            SizedBox(height: TSizes.spaceBtwItems,),
            TFooterSection(),
            SizedBox(height: TSizes.spaceBtwItems,),
        
          ],),
        ),
      ),
    );
  }
}

