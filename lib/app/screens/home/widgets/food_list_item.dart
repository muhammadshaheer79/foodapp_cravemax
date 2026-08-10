import 'package:crave_max_foodapp/app/data/models/food_item.dart';
import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodListItem extends StatelessWidget {
  final FoodItem foodItem;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  const FoodListItem({
    super.key,
    required this.foodItem,
    required this.onTap,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(left: 23, right: 23, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.35),
            blurRadius: 1.75,
            offset: Offset(0, 1.85),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 31,
                child: Image.network(
                  foodItem.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 79,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            foodItem.name,
                            style: GoogleFonts.inter(
                              fontSize: foodItem.name.length >= 20 ? 15 : 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 6,
                              right: 7,
                              top: 3,
                              bottom: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Color(
                                0xFFFFFBEA,
                              ), // very light yellow background
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(
                                  0xFFF5C518,
                                ), // yellow-orange border
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors
                                      .amber
                                      .shade400, // amber shade 400 star
                                  size: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  foodItem.rating.toStringAsFixed(1),
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          foodItem.category,
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          foodItem.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\$${foodItem.price.toStringAsFixed(2)}",
                            style: GoogleFonts.inter(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          GestureDetector(
                            onTap: onAddToCart,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 12,
                                right: 16,
                                top: 8,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    AppStrings.addBtnText,
                                    style: GoogleFonts.inter(
                                      fontSize:
                                          16, // complements icon size of 36
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
