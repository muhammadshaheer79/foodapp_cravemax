// import 'package:crave_max_foodapp/app/routes/app_routes.dart';
// import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String labelText;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPress;
  final IconData? iconName;
  final double? iconSize;
  final Color? iconColor;
  final bool? isLogoutBtn;

  const CustomElevatedButton({
    super.key,
    required this.labelText,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.onPress,
    this.iconName,
    this.iconSize,
    this.iconColor,
    this.isLogoutBtn = false,
  });

  @override
  Widget build(BuildContext context) {
    if (iconName != null && iconSize != null && iconColor != null && isLogoutBtn == false) {
      return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconName, size: iconSize, color: iconColor),
            SizedBox(width: 10),
            Text(
              labelText,
              style: GoogleFonts.inter(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    if (isLogoutBtn == true) {
      return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(
            color: color,
            width: 2.0,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconName, size: iconSize, color: iconColor),
            SizedBox(width: 10),
            Text(
              labelText,
              style: GoogleFonts.inter(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: color,
              ),
            ),
          ],
        ),
      );
    }

    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        labelText,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Colors.white,
        ),
      ),
    );
  }
}

/* ElevatedButton(
  onPressed: () => Get.toNamed(AppRoutes.mainLayout),
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF47D4A7),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
  child: Text(
    AppStrings.loginButtonText,
    style: GoogleFonts.inter(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
), */
