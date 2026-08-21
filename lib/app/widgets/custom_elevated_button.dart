// import 'package:crave_max_foodapp/app/routes/app_routes.dart';
// import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String labelText;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPress;
  final bool isLoading;
  final IconData? iconName;
  final double? iconSize;
  final Color? iconColor;
  final bool? isLogoutBtn;
  final bool? hasGoogleSvgIcon;
  final bool? hasAppleSvgIcon;
  final String? svgIconPath;

  const CustomElevatedButton({
    super.key,
    required this.labelText,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.onPress,
    this.isLoading = false,
    this.iconName,
    this.iconSize,
    this.iconColor,
    this.isLogoutBtn = false,
    this.hasGoogleSvgIcon = false,
    this.hasAppleSvgIcon = false,
    this.svgIconPath,
  });

  @override
  Widget build(BuildContext context) {
    bool isGoogleSvgIcon = hasGoogleSvgIcon != false && svgIconPath != null;
    bool isAppleSvgIcon = hasAppleSvgIcon != false && svgIconPath != null;

    if (iconName != null &&
        iconSize != null &&
        iconColor != null &&
        isLogoutBtn == false) {
      return ElevatedButton(
        onPressed: isLoading ? null : onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: isLoading ? const SizedBox(
          height: 22,
          width: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2.4,
            color: Colors.white,
          )
        ) : Row(
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
        onPressed: isLoading ? null : onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: color, width: 2.0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: isLoading ? SizedBox(
          height: 22,
          width: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2.4,
            color: color,
          )
        ) : Row(
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

    if (isGoogleSvgIcon == true) {
      return ElevatedButton.icon(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade400, width: 1.25),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        icon: SvgPicture.asset(
          svgIconPath!,
          width: 24, // Control the size explicitly
          height: 24,
          // colorFilter: const ColorFilter.mode(
          //   Colors.white,
          //   BlendMode.srcIn,
          // ), // Changes SVG color
        ),
        label: Text(
          labelText,
          style: GoogleFonts.inter(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          )
        ),
      );
    }

    if (isAppleSvgIcon == true) {
      return ElevatedButton.icon(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade400, width: 1.25),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        icon: SvgPicture.asset(
          svgIconPath!,
          width: 24, // Control the size explicitly
          height: 24,
          // colorFilter: const ColorFilter.mode(
          //   Colors.white,
          //   BlendMode.srcIn,
          // ), // Changes SVG color
        ),
        label: Text(
          labelText,
          style: GoogleFonts.inter(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          )
        ),
      );
    }

    return ElevatedButton(
      onPressed: isLoading ? null : onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: isLoading ? const SizedBox(
        height: 22,
        width: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2.4,
          color: Colors.white,
        )
      ) : Text(
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
