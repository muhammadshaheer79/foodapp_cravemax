import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/screens/auth/widgets/social_icon.dart';
import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:crave_max_foodapp/app/widgets/custom_elevated_button.dart';
import 'package:crave_max_foodapp/app/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 34, right: 34, top: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 100),

              // App brand logo
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // border: Border.all(color: Colors.blue, width: 22),
                ),
                height: 110,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    22,
                  ), // Slightly less than container to look clean
                  child: SvgPicture.asset(
                    'assets/icons/cravemax-app-logo.svg',
                    fit: BoxFit.cover, // Fills the entire container
                  ),
                ),
              ),
              SizedBox(height: 28),

              // Login Screen Title
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.welcomeSubtitle.substring(
                      0,
                      AppStrings.welcomeSubtitle.length - 8,
                    ),
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    AppStrings.welcomeSubtitle.substring(
                      24,
                      AppStrings.welcomeSubtitle.length,
                    ),
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              // Auth switch link to sign up screen statement row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.authSwitchSignUp.substring(
                      0,
                      AppStrings.authSwitchSignUp.length - 7,
                    ),
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.signup),
                    child: Text(
                      AppStrings.authSwitchSignUp.substring(
                        27,
                        AppStrings.authSwitchSignUp.length,
                      ),
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF47D4A7),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Email field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.emailLabel,
                hintText: AppStrings.emailHintText,
                isEmailTxtField: true,
              ),
              const SizedBox(height: 20),

              // Password field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.passwordLabel,
                hintText: AppStrings.passwordHintText,
                isEmailTxtField: true,
              ),
              const SizedBox(height: 12),

              // Forgot password - shown as a subtle chip/button aligned to the end
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: Color(0xFF47D4A7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          AppStrings.rememberMeTxt,
                          style: GoogleFonts.inter(
                            fontSize: 16.5,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4,
                      ),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      AppStrings.passwordRecoveryLinkTxt,
                      style: GoogleFonts.inter(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF47D4A7),
                        // decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF47D4A7),
                      ),
                    ),
                  ),
                ],
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: TextButton(
              //     onPressed: () {},
              //     style: TextButton.styleFrom(
              //       padding: const EdgeInsets.symmetric(
              //         horizontal: 4,
              //         vertical: 4,
              //       ),
              //       minimumSize: Size.zero,
              //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //     ),
              //     child: Text(
              //       AppStrings.passwordRecoveryLinkTxt,
              //       style: GoogleFonts.inter(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w600,
              //         color: Color(0xFF47D4A7),
              //         // decoration: TextDecoration.underline,
              //         decorationColor: Color(0xFF47D4A7),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 32),

              // Login button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: CustomElevatedButton(
                  labelText: AppStrings.loginButtonText,
                  color: Color(0xFF47D4A7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  onPress: () => Get.toNamed(AppRoutes.mainLayout),
                ),
              ),
              const SizedBox(height: 32),

              // Login screen divier w/ or statement
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.13,
                        color: Colors.grey.shade400,
                        indent: 6,
                        // radius: BorderRadiusGeometry.all(Radius.elliptical(10, 10)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        AppStrings.loginDividerText,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.13,
                        color: Colors.grey.shade400,
                        endIndent: 6,
                        // radius: BorderRadiusGeometry.all(Radius.elliptical(10, 10)),
                      ),
                    ),
                    
                  ],
              ),
              const SizedBox(height: 32),

              // Social Auth buttons
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SocialAuthIcon(
                      labelBtnText: AppStrings.socialIconGgleTxt,
                      onTap: () => {},
                      svgIcon: "assets/icons/google_svg.svg",
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SocialAuthIcon(
                      labelBtnText: AppStrings.socialIconApleTxt,
                      onTap: () => {},
                      svgIcon: "assets/icons/apple_svg.svg",
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
