import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:track/presentation/screens/home_screen/home.dart';
import 'package:track/presentation/screens/profile_screen/profile.dart';
import 'core/constants/colors.dart';
import 'core/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Obx(
          ()=> Scaffold(
            bottomNavigationBar: NavigationBar(
              elevation: 0,
              height: 80,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              backgroundColor: darkMode? TColors.dark:TColors.light,
              indicatorColor: darkMode? TColors.white.withOpacity(0.1): TColors.dark.withOpacity(0.1),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                NavigationDestination(icon: Icon(Iconsax.bookmark), label: 'Bookmarks'),
                NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
              ],),
            body: Obx(()=> controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purpleAccent,),
    Container(color: Colors.pinkAccent,),
    const ProfileScreen(),
  ];
}
