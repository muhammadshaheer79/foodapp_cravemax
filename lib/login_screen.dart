import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // border: Border.all(color: Colors.blue, width: 22),
              ),
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  14,
                ), // Slightly less than container to look clean
                child: SvgPicture.asset(
                  'assets/icons/cravemax-app-logo.svg',
                  fit: BoxFit.contain, // Fills the entire container
                ),
              ),
            ),
            SizedBox(height: 26),
            // Title
            Text(
              'Welcome Back',
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Sign up row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign up',
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
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.inter(fontSize: 16),
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                labelStyle: GoogleFonts.inter(color: Colors.grey[600]),
                hintStyle: GoogleFonts.inter(color: Colors.grey[400]),
                filled: true,
                fillColor: const Color(0xFFF7F8FA),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0xFF47D4A7),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password field
            TextFormField(
              obscureText: true,
              style: GoogleFonts.inter(fontSize: 16),
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                labelStyle: GoogleFonts.inter(color: Colors.grey[600]),
                hintStyle: GoogleFonts.inter(color: Colors.grey[400]),
                filled: true,
                fillColor: const Color(0xFFF7F8FA),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0xFF47D4A7),
                    width: 1.5,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Forgot password - shown as a subtle chip/button aligned to the end
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
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
                  'Forgot password?',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF47D4A7),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF47D4A7),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 36),

            // Login button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF47D4A7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Social login icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SocialIconPlaceholder(
                  onTap: () {},
                  icon: Icons.camera_alt, // placeholder for Instagram
                  color: const Color(0xFFE1306C),
                ),
                const SizedBox(width: 20),
                _SocialIconPlaceholder(
                  onTap: () {},
                  icon: Icons.g_mobiledata, // placeholder for Google
                  color: const Color(0xFFDB4437),
                ),
                const SizedBox(width: 20),
                _SocialIconPlaceholder(
                  onTap: () {},
                  icon: Icons.facebook,
                  color: const Color(0xFF1877F2),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// Container(
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(16),
//     // border: Border.all(color: Colors.blue, width: 22),
//   ),
//   height: 150,
//   width: 150,
//   child: ClipRRect(
//     borderRadius: BorderRadius.circular(14), // Slightly less than container to look clean
//     child: SvgPicture.asset(
//       'assets/icons/cravemax-app-logo.svg',
//       fit: BoxFit.contain, // Fills the entire container
//     ),
//   ),
// ),
// SizedBox(height: 26),

// Simple inline social icon button (kept minimal, not a full custom widget
// system — replace icons with actual brand assets/icon packages as needed).
class _SocialIconPlaceholder extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color color;

  const _SocialIconPlaceholder({
    required this.onTap,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Icon(icon, color: color, size: 24),
      ),
    );
  }
}
