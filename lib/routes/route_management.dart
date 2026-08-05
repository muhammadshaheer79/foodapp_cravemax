import 'package:crave_max_foodapp/screens/home_screen.dart';
import 'package:crave_max_foodapp/screens/login_screen.dart';
import 'package:crave_max_foodapp/screens/profile_screen.dart';
import 'package:crave_max_foodapp/routes/app_routes.dart';
import 'package:crave_max_foodapp/screens/signup_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  AppScreens._();

  static final screens = <GetPage>[
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignUpScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
  ];
}
