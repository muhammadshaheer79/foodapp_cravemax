import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/screens/auth/widgets/social_icon.dart';
import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:crave_max_foodapp/app/widgets/custom_elevated_button.dart';
import 'package:crave_max_foodapp/app/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static const Color primaryColor = Color(0xFF47D4A7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 34, right: 34, top: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45),

              // Signup Screen Title
              Text(
                AppStrings.signupTitle,
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),

              // Subtitle
              Text(
                AppStrings.signupSubtitle,
                style: GoogleFonts.inter(fontSize: 18, color: Colors.grey[700]),
              ),
              const SizedBox(height: 32),

              // Full name text field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.fullNameLabel,
                hintText: AppStrings.fullNameHintText,
              ),

              const SizedBox(height: 20),

              // Email text field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.emailAddressLabel,
                hintText: AppStrings.emailHintText,
                isEmailTxtField: true,
              ),
              const SizedBox(height: 20),

              // Password text field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.passwordLabel,
                hintText: AppStrings.passwordHintText,
                isEmailTxtField: true,
              ),
              const SizedBox(height: 20),

              // Confirm password text field
              CustomTextFormField(
                fontSize: 16,
                labelText: AppStrings.confirmPasswordLabel,
                hintText: AppStrings.confirmPasswordHintText,
                isEmailTxtField: true,
              ),
              const SizedBox(height: 24),

              // Terms and conditions checkbox
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      AppStrings.tNcCheckboxLabel,
                      style: GoogleFonts.inter(
                        fontSize: 16.5,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Sign up button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: CustomElevatedButton(
                  labelText: AppStrings.signupButtonText,
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  onPress: () => {},
                ),
              ),
              const SizedBox(height: 32),

              // Already have an account? Login text button
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings.authSwitchLogin.substring(
                        0,
                        AppStrings.authSwitchLogin.length - 5,
                      ),
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    TextButton(
                      onPressed: () => {Get.toNamed(AppRoutes.login)},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        AppStrings.authSwitchLogin.substring(
                          25,
                          AppStrings.authSwitchLogin.length,
                        ),
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Signup Screen Or statement divider
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
                      AppStrings.signUpDividerText,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
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
              const SizedBox(height: 24),

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
                      // color: const Color(0xFFDB4437),
                    ),
                  ),
                  // const SizedBox(width: 34),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
