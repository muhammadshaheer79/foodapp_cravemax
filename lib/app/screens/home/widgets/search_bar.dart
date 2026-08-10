import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StickySearchBar extends StatefulWidget {
  const StickySearchBar({super.key});

  @override
  State<StickySearchBar> createState() => _StickySearchBarState();
}

class _StickySearchBarState extends State<StickySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 26, 20, 0),
      child: //Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(
          //     40,
          //   ), // Gives it that fully rounded pill shape
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.black.withOpacity(
          //         0.06,
          //       ), // Very soft, clean shadow
          //       // blurRadius: 10,
          //       // spreadRadius: 2,
          //       // offset: const Offset(0, 4),
          //     ),
          //   ],
          // ),
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          style: GoogleFonts.inter(color: Colors.black, fontSize: 18),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: AppStrings.searchHintText,
            hintStyle: GoogleFonts.inter(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: OutlineInputBorder(
              // Unfocused Color
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              // Focused Color
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.black45),
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 8.0),
              child: Icon(
                Icons.search_rounded,
                color: Colors.black54,
                size: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              minHeight: 40,
            ),
            border: InputBorder.none,
            errorStyle: const TextStyle(height: 0),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
          ),
        ),
      //),
    );
  }
}