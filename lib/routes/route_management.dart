import 'package:crave_max_foodapp/login_screen.dart';
import 'package:crave_max_foodapp/profile_screen.dart';
import 'package:crave_max_foodapp/routes/app_routes.dart';
import 'package:crave_max_foodapp/signup_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  AppScreens._();

  static final screens = <GetPage>[
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignUpScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
  ];
}
