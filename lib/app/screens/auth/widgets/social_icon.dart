import 'package:crave_max_foodapp/app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// Simple inline social icon button (kept minimal, not a full custom widget
// system — replace icons with actual brand assets/icon packages as needed).
class SocialAuthIcon extends StatelessWidget {
  final VoidCallback onTap;
  final String labelBtnText;
  final String svgIcon;
  // final Color color;

  const SocialAuthIcon({
    super.key,
    required this.onTap,
    required this.labelBtnText,
    required this.svgIcon,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (labelBtnText.toLowerCase() == "apple") {
      return SizedBox(
        height: 52,
        width: double.infinity,
        child: CustomElevatedButton(
          labelText: labelBtnText,
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          onPress: () => {},
          hasAppleSvgIcon: true,
          svgIconPath: svgIcon,
        ),
      );
    }

    return SizedBox(
      height: 52,
      width: double.infinity,
      child: CustomElevatedButton(
        labelText: labelBtnText,
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        onPress: () => {},
        hasGoogleSvgIcon: true,
        svgIconPath: svgIcon,
      ),
    );
  }
}
