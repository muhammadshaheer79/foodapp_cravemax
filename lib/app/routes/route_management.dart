// import 'package:crave_max_foodapp/app/screens/home/home_screen.dart';
import 'package:crave_max_foodapp/app/screens/auth/login_screen.dart';
// import 'package:crave_max_foodapp/app/screens/profile/profile_screen.dart';
import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/screens/auth/signup_screen.dart';
import 'package:crave_max_foodapp/app/widgets/main_layout.dart';
import 'package:get/get.dart';

class AppScreens {
  AppScreens._();

  static final screens = <GetPage>[
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => const SignUpScreen()),
    GetPage(name: AppRoutes.mainLayout, page: () => MainLayout()),
    // GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    // GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
  ];
}
