import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Simple inline social icon button (kept minimal, not a full custom widget
// system — replace icons with actual brand assets/icon packages as needed).
class SocialAuthIcon extends StatelessWidget {

  final VoidCallback onTap;
  final String svgIcon;
  // final Color color;

  const SocialAuthIcon({
    super.key,
    required this.onTap,
    required this.svgIcon,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(32),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            svgIcon,
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}