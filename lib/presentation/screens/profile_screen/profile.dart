import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:track/core/constants/image_strings.dart';
import 'package:track/core/constants/sizes.dart';
import 'package:track/core/constants/text_string.dart';
import 'package:track/presentation/screens/account_screen/account_screen.dart';
import 'package:track/presentation/screens/profile_screen/widgets/edit_profile_button.dart';
import 'package:track/presentation/screens/profile_screen/widgets/profile_menu.dart';
import 'package:track/presentation/screens/profile_screen/widgets/profile_picture.dart';
import 'package:track/widgets/appbar/appbar.dart';
import '../../../core/constants/colors.dart';
import '../edit_profile/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: TColors.light,
          appBar: TAppBar(
            leadingOnPressed: () => Get.back(),
            leadingIcon: CupertinoIcons.back,
            title: const Text(TTexts.profile),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.menu)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// header
              Column(
                children: [
                  /// Profile Picture
                  const Center(
                    child: TProfilePicture(image: TImages.profile),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  /// Username
                  Text(
                    TTexts.sampleUser,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm / 2),
                  /// User email
                  Text(
                    TTexts.sampleEmail,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  /// Edit profile button
                  TCustomButton(text: "Edit Profile",
                    onPressed: () => Get.to(() => const EditProfileScreen()),),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Body
              TProfileMenus(
                  onPressed: () {},
                  title: TTexts.settings,
                  prefixIcon: Icons.settings),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TProfileMenus(
                  onPressed: () {},
                  title: TTexts.bills,
                  prefixIcon: Iconsax.bill),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TProfileMenus(
                  onPressed: () => Get.to(()=> const AccountScreen()),
                  title: TTexts.userManagement,
                  prefixIcon: Iconsax.edit4),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TProfileMenus(
                  onPressed: () {},
                  title: TTexts.information,
                  prefixIcon: Iconsax.information),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TProfileMenus(
                  onPressed: () {},
                  title: TTexts.logout,
                  prefixIcon: Icons.logout),
              const SizedBox(height: TSizes.spaceBtwItems,),
            ],
          ),
        ),
      );
  }
}

