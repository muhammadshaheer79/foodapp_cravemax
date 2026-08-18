import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final double fontSize;
  final String labelText;
  final String hintText;
  final bool? isPasswordTxtField;
  final bool? isEmailTxtField;

  static const Color primaryColor = Color(0xFF47D4A7);

  const CustomTextFormField({
    super.key,
    required this.fontSize,
    required this.labelText,
    required this.hintText,
    this.isPasswordTxtField = false,
    this.isEmailTxtField = false,
  });

  InputDecoration _fieldDecoration(String label, String hint) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      labelStyle: GoogleFonts.inter(color: Colors.grey[600]),
      hintStyle: GoogleFonts.inter(color: Colors.grey[400]),
      filled: true,
      fillColor: const Color(0xFFF7F8FA),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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

    if (isPasswordTxtField == true) {
      return TextFormField(
        obscureText: true,
        style: GoogleFonts.inter(
          fontSize: fontSize,
        ),
        decoration: _fieldDecoration(
          labelText,
          hintText,
        ).copyWith(
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility_off_outlined),
            color: Colors.grey,
            onPressed: () => {},
          )
        ),
      );
    }

    if (isEmailTxtField == true) {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.inter(
          fontSize: fontSize,
        ),
        decoration: _fieldDecoration(
          labelText,
          hintText,
        ),
      );
    }
    
    return TextFormField(
      style: GoogleFonts.inter(
        fontSize: fontSize,
      ),
      decoration: _fieldDecoration(
        labelText,
        hintText,
      ),
    );
  }
}
