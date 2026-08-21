// import 'package:crave_max_foodapp/app/screens/home/home_screen.dart';
import 'package:crave_max_foodapp/app/data/models/food_item.dart';
import 'package:crave_max_foodapp/app/modules/auth/screens/login_screen.dart';
// import 'package:crave_max_foodapp/app/screens/profile/profile_screen.dart';
import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/modules/auth/screens/signup_screen.dart';
import 'package:crave_max_foodapp/app/modules/food_detail/screens/food_item_detail.dart';
import 'package:crave_max_foodapp/app/modules/main_layout/screens/main_layout.dart';
import 'package:get/get.dart';

class AppScreens {
  AppScreens._();

  static final screens = <GetPage>[
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: AppRoutes.mainLayout, page: () => MainLayout()),
    GetPage(
      name: AppRoutes.foodItemDetails,
      page: () => FoodItemDetail(foodItem: Get.arguments as FoodItem),
      transition: Transition.rightToLeft,
    ),
    // GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    // GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
  ];
}
