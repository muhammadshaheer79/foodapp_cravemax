import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Add google_fonts to pubspec.yaml for Inter font

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static const Color primaryColor = Color(0xFF47D4A7);

  InputDecoration _fieldDecoration(String label, String hint) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
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
        borderSide: const BorderSide(color: primaryColor, width: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Title
              Text(
                'Create Account',
                style: GoogleFonts.inter(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),

              // Subtitle
              Text(
                'Sign up to get started',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 32),

              // Full name field
              TextFormField(
                style: GoogleFonts.inter(fontSize: 16),
                decoration: _fieldDecoration('Full name', 'Enter your full name'),
              ),
              const SizedBox(height: 20),

              // Email field
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.inter(fontSize: 16),
                decoration: _fieldDecoration('Email address', 'Enter your email'),
              ),
              const SizedBox(height: 20),

              // Password field
              TextFormField(
                obscureText: true,
                style: GoogleFonts.inter(fontSize: 16),
                decoration: _fieldDecoration('Password', 'Enter your password').copyWith(
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Confirm password field
              TextFormField(
                obscureText: true,
                style: GoogleFonts.inter(fontSize: 16),
                decoration: _fieldDecoration('Confirm password', 'Re-enter your password').copyWith(
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
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
                      'I agree to the terms and conditions',
                      style: GoogleFonts.inter(
                        fontSize: 15,
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
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Already have an account row
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}