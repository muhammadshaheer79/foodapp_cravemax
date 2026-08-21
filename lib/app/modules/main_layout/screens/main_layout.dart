import 'package:crave_max_foodapp/app/modules/main_layout/controllers/main_layout_controller.dart';
import 'package:crave_max_foodapp/app/modules/favorite/screens/favorite_screen.dart';
// import 'package:crave_max_foodapp/app/screens/home/home_screen.dart';
import 'package:crave_max_foodapp/app/modules/home/screens/home_screen.dart';
import 'package:crave_max_foodapp/app/modules/order/screens/order_screen.dart';
import 'package:crave_max_foodapp/app/modules/profile/screens/profile_screen.dart';
import 'package:crave_max_foodapp/app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLayout extends StatelessWidget {
  MainLayout({super.key});

  final controller = Get.put(MainLayoutController());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevents closing the app instantly
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        // Checks if the inner nested views can go back
        final NavigatorState? nestedNavigator = Get.nestedKey(
          NestedKeys.hostNavigatorId,
        )?.currentState;
        if (nestedNavigator != null && nestedNavigator.canPop()) {
          nestedNavigator.pop();
        } else {
          // If no inner history remains, let the app close safely
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBarTheme(
            data: NavigationBarThemeData(
              iconTheme: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return const IconThemeData(color: Color(0xFF47D4A7));
                }

                return const IconThemeData(color: Colors.black);
              }),
              labelTextStyle: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return GoogleFonts.inter(
                    color: Color(0xFF47D4A7),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  );
                }
                return GoogleFonts.inter(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.5,
                );
              }),
            ),
            child: NavigationBar(
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: controller.changeTab,
              backgroundColor: Colors.white,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined, size: 28),
                  selectedIcon: Icon(Icons.home, size: 28),
                  label: AppStrings.homeTabBarText,
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: AppStrings.myOrderTabBarText,
                  selectedIcon: Icon(Icons.shopping_bag),
                ),
                NavigationDestination(
                  icon: Icon(Icons.favorite_border_rounded),
                  label: AppStrings.savedTabBarText,
                  selectedIcon: Icon(Icons.favorite),
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_2_outlined),
                  selectedIcon: Icon(Icons.person_2_rounded),
                  label: AppStrings.profileTabBarText,
                ),
              ],
            ),
          ),
        ),
        body: Navigator(
          key: Get.nestedKey(NestedKeys.hostNavigatorId),
          initialRoute: '/home',
          onGenerateRoute: (settings) {
            if (settings.name == '/home') {
              return GetPageRoute(page: () => const HomeScreen());
            }
            if (settings.name == '/my-order') {
              return GetPageRoute(page: () => const OrderScreen());
            }
            if (settings.name == '/saved') {
              return GetPageRoute(page: () => const FavoriteScreen());
            }
            if (settings.name == '/profile') {
              return GetPageRoute(page: () => const ProfileScreen());
            }
            return null;
          },
        ),
      ),
    );
  }
}
