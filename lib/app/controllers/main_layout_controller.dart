import 'package:get/get.dart';

class NestedKeys {
  static const int hostNavigatorId = 1;
}

class MainLayoutController extends GetxController {
  var selectedIndex = 0.obs;

  final List<String> _initialRoutes = [
    "/home",
    "/my-order",
    "/saved",
    "/profile",
  ];

  void changeTab(int index) {
    if (selectedIndex.value == index) return;

    selectedIndex.value = index;

    // Jump straight to the initial tab route inside the nested container
    Get.toNamed(_initialRoutes[index], id: NestedKeys.hostNavigatorId);
  }
}
