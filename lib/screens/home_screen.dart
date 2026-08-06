import 'package:crave_max_foodapp/utils/app_strings.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Good evening, Shaheer 👋",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                          SizedBox(width: 7),
                          Text(
                            "3891 Karachi, Pakistan",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Row(
                      // This aligns all icons and text perfectly on their center line
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.favorite_outline_rounded,
                          size: 28,
                          color: Colors.black,
                        ),
                        SizedBox(width: 14),
                        Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
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
                    enabledBorder: OutlineInputBorder(  // Unfocused Color
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(  // Focused Color
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(21, 24, 21, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.trustedPicksTitle,
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
                      AppStrings.viewAllBtnText,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.white,
                          clipBehavior: Clip.antiAlias,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://thumbs.dreamstime.com/b/highresolution-image-showcasing-crispy-chicken-sandwich-complete-mayonnaise-fresh-vegetables-sesame-bun-golden-breaded-457903015.jpg",
                                  height: 130,
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Chicken Burger",
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Fast food",
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      SizedBox(width: 4,),
                                      Text(
                                        "15 min",
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(width: 3.5,),
                                      SizedBox(
                                        height: 12,
                                        child: VerticalDivider(
                                          color: Colors.grey,
                                          thickness: 1,
                                          width: 1,
                                        )
                                      ),
                                      SizedBox(width: 3.5,),
                                      Text(
                                        "400 Kcal",
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$25.00",
                                      style: GoogleFonts.inter(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_circle_rounded,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      size: 36,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 16.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber.shade400,
                                size: 19,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                "4.5",
                                style: GoogleFonts.inter(
                                  fontSize: 13.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        )
                      ],
                    ),  
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Stack(
                      children: [
                        Card(
                          color: Colors.white,
                          clipBehavior: Clip.antiAlias,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://t4.ftcdn.net/jpg/16/93/69/07/360_F_1693690769_AyElZH2ia3mWn5XpK6iIdHjuMiV9m2Sh.jpg",
                                  height: 130,
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Beef Burger",
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Fast food",
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      SizedBox(width: 4,),
                                      Text(
                                        "15 min",
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(width: 3.5,),
                                      SizedBox(
                                        height: 12,
                                        child: VerticalDivider(
                                          color: Colors.grey,
                                          thickness: 1,
                                          width: 1,
                                        )
                                      ),
                                      SizedBox(width: 3.5,),
                                      Text(
                                        "500 Kcal",
                                        style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$30.00",
                                      style: GoogleFonts.inter(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_circle_rounded,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      size: 36,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 16.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber.shade400,
                                size: 19,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(width: 3,),
                              Text(
                                "4.5",
                                style: GoogleFonts.inter(
                                  fontSize: 13.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )
                        )
                      ],
                    ),  
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28, left: 20),
              child: Text(
                "Recommended",
                style: GoogleFonts.inter(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],

          // WORK IN PROGRESS
        ),
      ),
    );
  }
}
