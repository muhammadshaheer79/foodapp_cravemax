import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/core/utils/app_strings.dart';
import 'package:crave_max_foodapp/app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 325, 
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF47D4A7),
                              Color.fromRGBO(0, 123, 82, 1),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(255, 246, 246, 239),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 75),
                            Text(
                              "Syed Muhammad Shaheer",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_pin, size: 20, color: Colors.black45),
                                SizedBox(width: 6),
                                Text(
                                  "Karachi, Pakistan",
                                  style: TextStyle(fontSize: 16, color: Colors.black45),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(fontSize: 16, color: Colors.black45),
                                    children: [
                                      TextSpan(text: "T-shaped Developer"),
                                      TextSpan(
                                        text: '  \u2022  ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(text: "Flutter Beginner"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 26),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 239, 254, 249),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "7.000",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(0, 123, 82, 1),
                                          ),
                                        ),
                                        Text(
                                          AppStrings.rewardPointsText,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 239, 254, 249),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "35",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(0, 123, 82, 1),
                                          ),
                                        ),
                                        Text(
                                          AppStrings.ordersPlacedText,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 239, 254, 249),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "12",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(0, 123, 82, 1),
                                          ),
                                        ),
                                        Text(
                                          AppStrings.favoritesText,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 26),
                              ],
                            ),
                            SizedBox(height: 40),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28),
                              child: SizedBox(
                                height: 56,
                                width: double.infinity,
                                child: CustomElevatedButton(
                                  labelText: AppStrings.editProfileBtnText,
                                  color: Color(0xFF47D4A7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  onPress: () => {},
                                  iconName: Icons.edit,
                                  iconSize: 20,
                                  iconColor: Colors.white,
                                )
                              )
                            ),
                            SizedBox(height: 18),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: BoxBorder.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.message, size: 20, color: Colors.black),
                                          SizedBox(width: 10),
                                          Text(
                                            AppStrings.messageBtnText,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: BoxBorder.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.share, size: 20, color: Colors.black),
                                          SizedBox(width: 10),
                                          Text(
                                            AppStrings.shareBtnText,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: SizedBox(
                                height: 56,
                                width: double.infinity,
                                child: CustomElevatedButton(
                                  labelText: AppStrings.logoutBtnText,
                                  color: Colors.red.shade600,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  onPress: () => Get.offAllNamed(AppRoutes.login),
                                  iconName: Icons.logout_rounded,
                                  iconSize: 20,
                                  iconColor: Colors.red.shade600,
                                  isLogoutBtn: true,
                                )
                              ),
                            ),
                            SizedBox(height: 24), // bottom breathing room
                          ],
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    top: 275,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profilepic.png',
                          width: 96,
                          height: 96,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}