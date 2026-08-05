import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 18, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Text(
                          "Good evening, user 👋",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 22,
                            color: Colors.black,
                          ),
                          SizedBox(width: 7,),
                          Text(
                            "3891 Ranchview, California",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.black
                            )                          
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    // This aligns all icons and text perfectly on their center line
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                        color: Colors.black
                      ),
                      SizedBox(width: 12,),            
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 28,
                        color: Colors.black
                      ),      
                    ],
                  ),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 26, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), // Gives it that fully rounded pill shape
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06), // Very soft, clean shadow
                      // blurRadius: 10,
                      // spreadRadius: 2,
                      // offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 8.0),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.black54,
                        size: 28,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 50,
                      minHeight: 50
                    ),
                    border: InputBorder.none,
                    errorStyle: const TextStyle(height: 0),
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(21, 24, 21, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your trusted picks",
                    style: GoogleFonts.inter(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        // horizontal: 4,
                        vertical: 6,
                      ),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      "View all",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF47D4A7),
                        // decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF47D4A7),
                      ),
                    ),
                  ),
                ],
              )
            )
          ],

        )
      )
    );
  }
}