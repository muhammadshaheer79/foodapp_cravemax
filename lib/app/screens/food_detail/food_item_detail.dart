import 'dart:ui';

import 'package:crave_max_foodapp/app/data/models/food_item.dart';
import 'package:crave_max_foodapp/app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItemDetail extends StatefulWidget {
  final FoodItem foodItem;

  const FoodItemDetail({super.key, required this.foodItem});

  @override
  State<FoodItemDetail> createState() => _FoodItemDetailState();
}

class _FoodItemDetailState extends State<FoodItemDetail> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final foodItem = widget.foodItem;

    return Scaffold(
      body: /* SafeArea(
        child:*/ SizedBox.expand(
        child: Stack(
          children: [
            Container(
              height: 480,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFD9D9D9), Color(0xFF43D6A8)],
                ),
              ),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  height: 440,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    // topRight: Radius.circular(260),
                    // topRight: Radius.circular(0),
                  ),
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(34, 46, 20, 26),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    foodItem.name,
                                    style: GoogleFonts.inter(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    foodItem.category,
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.remove),
                                    color: Colors.black,
                                    iconSize: 22,
                                    style: IconButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      fixedSize: const Size(44, 44),
                                      padding: EdgeInsets.zero,
                                      // Applies the subtle gray border
                                      side: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 1.5,
                                      ),
                                    ),
                                    // fill: 0.2,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    _quantity.toString(),
                                    style: GoogleFonts.inter(
                                      fontSize: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.add_circle_rounded,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    size: 46,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 27),
                          Padding(
                            padding: EdgeInsets.fromLTRB(21, 0, 12, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_outline_rounded,
                                  size: 27,
                                  color: Color(0xFF47D4A7),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  foodItem.rating.toStringAsFixed(1),
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 21),
                                SizedBox(
                                  height: 24,
                                  child: VerticalDivider(
                                    color: Colors.grey.shade400,
                                    thickness: 0.8,
                                    width: 1,
                                  ),
                                ),
                                SizedBox(width: 21),
                                Icon(
                                  Icons.ramen_dining_outlined,
                                  size: 26,
                                  color: Color(0xFF47D4A7),
                                ),
                                SizedBox(width: 9.5),
                                Text(
                                  foodItem.servingSize,
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 21),
                                SizedBox(
                                  height: 24,
                                  child: VerticalDivider(
                                    color: Colors.grey.shade400,
                                    thickness: 0.8,
                                    width: 1,
                                  ),
                                ),
                                SizedBox(width: 21),
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  size: 26,
                                  color: Color(0xFF47D4A7),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '${foodItem.calories.toString()} Kcal',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 27),
                          Text(
                            'Protein - ${foodItem.proteinGrams.toString()}g | Carbs - ${foodItem.carbsGrams.toString()}g | Fats - ${foodItem.fatsGrams.toString()}g',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 7),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                              foodItem.description,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(height: 22),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => {},
                              borderRadius: BorderRadius.circular(5),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 5,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Customize",
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        color: Color(0xFF47D4A7),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 16,
                                      color: Color(0xFF47D4A7),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 22),
                          SizedBox(
                            height: 40,
                            child: Divider(
                              thickness: 1.8,
                              color: Colors.grey.shade400,
                              endIndent: 10,
                            ),
                          ),
                          SizedBox(height: 46),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total amount",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      '\$ ${(foodItem.price * _quantity).toStringAsFixed(2)}',
                                      style: GoogleFonts.inter(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 38),
                                  child: SizedBox(
                                    height: 56,
                                    child: CustomElevatedButton(
                                      labelText: "ADD TO CART",
                                      color: Color(0xFF47D4A7),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      onPress: () => {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 35,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: 360,
                  height: 360,
                  child: Image.network(
                    "assets/images/chicken-burger-transparent.png",
                    fit: BoxFit
                        .contain, // 🔧 not .cover — keeps full silhouette visible, no cropping
                  ),
                ),
              ),
            ),
            Positioned(
              top: 32,
              left: 26,
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () => Get.back(),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 26),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
