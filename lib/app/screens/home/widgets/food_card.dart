import 'package:crave_max_foodapp/app/data/models/food_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  final FoodItem foodItem;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  const FoodCard({
    super.key,
    required this.foodItem,
    required this.onTap,
    required this.onAddToCart,
  });
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  foodItem.imageUrl,
                  height: 110,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    foodItem.name,
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
                    foodItem.category,
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
                      SizedBox(width: 4),
                      Text(
                        foodItem.duration,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 3.5),
                      SizedBox(
                        height: 12,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                          width: 1,
                        ),
                      ),
                      SizedBox(width: 3.5),
                      Text(
                        "${foodItem.calories.toString()} Kcal",
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
                      "\$${foodItem.price.toStringAsFixed(2)}",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.amber.shade400,
                size: 19,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(width: 3),
              Text(
                foodItem.rating.toStringAsFixed(1),
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
