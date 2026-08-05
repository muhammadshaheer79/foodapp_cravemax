import 'package:crave_max_foodapp/routes/app_routes.dart';
import 'package:crave_max_foodapp/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(
                    0xFF47D4A7,
                  ), // lighter teal - associated with top-left area
                  Color.fromRGBO(
                    0,
                    123,
                    82,
                    1,
                  ), // deeper teal - associated with bottom-right area
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 325,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.white,
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
                              text:
                                  '  \u2022  ', // Unicode for middle dot with spacing
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.bold, // Makes the dot thick
                                fontSize: 16, // Increases dot size specifically
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
                          width: 80,
                          height: 80,
                          // margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 254, 249),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "120",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 123, 82, 1),
                                ),
                              ),
                              //SizedBox(height: 6),
                              Text(
                                AppStrings.postsContainerText,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          width: 80,
                          height: 80,
                          // margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 254, 249),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4.5K",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 123, 82, 1),
                                ),
                              ),
                              //SizedBox(height: 6),
                              Text(
                                AppStrings.followersContainerText,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          width: 80,
                          height: 80,
                          // margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 254, 249),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "180",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 123, 82, 1),
                                ),
                              ),
                              //SizedBox(height: 6),
                              Text(
                                AppStrings.followingContainerText,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
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
                    child: Container(
                      height: 55,
                      // margin: EdgeInsets.all(12),
                      //padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFF47D4A7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(width: 10),
                          Text(
                            AppStrings.editProfileBtnText,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                            // margin: EdgeInsets.all(12),
                            //padding: EdgeInsets.all(12),
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
                                Icon(
                                  Icons.message,
                                  size: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
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
                            // margin: EdgeInsets.all(12),
                            //padding: EdgeInsets.all(12),
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
                                Icon(
                                  Icons.share,
                                  size: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
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
                        // Icon(Icons.edit, size: 20, color: Colors.white, fontWeight: FontWeight.bold,),
                        // SizedBox(width: 10),
                        // Text("Edit Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(14),
                        // offAllNamed clears the whole stack — GetX equivalent
                        // of pushNamedAndRemoveUntil(..., (route) => false).
                        onTap: () => (
                          Get.offAllNamed(
                            AppRoutes.login,
                          )
                        ),
                        child: Container(
                          height: 50,
                          // padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: BoxBorder.all(
                              color: Colors.red.shade300,
                              style: BorderStyle.solid,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                size: 20,
                                color: Colors.red.shade600,
                                fontWeight: FontWeight.w600
                              ),
                              SizedBox(width: 10,),
                              Text(
                                AppStrings.logoutBtnText,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red.shade600,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                    )
                ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 270,
            bottom: 530,
            left: 150,
            right: 150,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                // border: BoxBorder.all(color: Colors.white, style: BorderStyle.solid, width: 6.5),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profilepic.png',
                    width: 105,
                    height: 105,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
