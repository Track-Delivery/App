import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track/core/constants/colors.dart';
import 'package:track/core/constants/sizes.dart';
import 'package:track/core/constants/text_string.dart';
import 'package:track/presentation/screens/edit_profile/widgets/edit_profile_picture.dart';
import 'package:track/presentation/screens/edit_profile/widgets/profile_form.dart';
import 'package:track/widgets/appbar/appbar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.light,
      appBar: TAppBar(actions: [TextButton(onPressed: ()=> Get.back(),
          child: Text(TTexts.done, style: Theme.of(context).textTheme.titleSmall,))],),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Center(
            child: Column(children: [
              Text(TTexts.profileTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// Profile picture
              const TProfilePictureEdit(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Edit Profile Form
              const TEditProfileForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){},
                      child: Text(TTexts.logout, style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red))),
                ],
              )
              ],),
          ),
        ),
      ),

    );
  }
}

