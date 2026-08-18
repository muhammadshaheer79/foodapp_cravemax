import 'package:crave_max_foodapp/app/data/dummy_data.dart';
import 'package:crave_max_foodapp/app/data/models/food_item.dart';
import 'package:crave_max_foodapp/app/routes/app_routes.dart';
import 'package:crave_max_foodapp/app/screens/home/widgets/food_card.dart';
import 'package:crave_max_foodapp/app/screens/home/widgets/food_list_item.dart';
import 'package:crave_max_foodapp/app/screens/home/widgets/search_bar.dart';
import 'package:crave_max_foodapp/app/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodItem> get _favoriteFoodItems {
    return demoFoodItems.where((itm) {
      return itm.isFavorite ? true : false;
    }).toList();
  }

  List<FoodItem> get _bestSellerFoodItems {
    return demoFoodItems.where((itm) {
      return itm.isBestseller ? true : false;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Non-AppBar HomeScreen Header
            SliverToBoxAdapter(
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
                ],
              ),
            ),

            // Sticky HomeScreen Search field/box:
            SliverPersistentHeader(
              pinned: true,
              // floating: false,
              delegate: _SearchBarDelegate(),
              // floating: true,
            ),

            // Your trusted pick title + view all text button
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(21, 24, 21, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            ),

            // Favorite FoodCard in GridView:
            SliverPadding(
              padding: EdgeInsetsGeometry.only(left: 16, right: 16, top: 13),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.65,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: _favoriteFoodItems.length,
                  (context, index) {
                    final foodItem = _favoriteFoodItems[index];

                    return FoodCard(
                      foodItem: foodItem,
                      onTap: () => Get.toNamed(
                        AppRoutes.foodItemDetails,
                        arguments: foodItem,
                      ),
                      onAddToCart: () => {},
                    );
                  },
                ),
              ),
            ),

            // Recommended title
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20, bottom: 11),
                child: Text(
                  AppStrings.recommendedTitle,
                  style: GoogleFonts.inter(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            // SliverToBoxAdapter(child: SizedBox(height: 6)),
            // Bestseller FoodItems in ListView
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final foodItem = _bestSellerFoodItems[index];
                return FoodListItem(
                  foodItem: foodItem,
                  onTap: () => Get.toNamed(
                    AppRoutes.foodItemDetails,
                    arguments: foodItem,
                  ),
                  onAddToCart: () => {},
                );
              }, childCount: _bestSellerFoodItems.length),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
          ],
        ),
      ),
    );
  }
}

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  static const double _height = 80;

  @override
  double get minExtent => _height;
  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Color.fromARGB(255, 246, 246, 239), // opaque
      child: Center(child: StickySearchBar()),
    );
  }

  @override
  bool shouldRebuild(covariant _SearchBarDelegate oldDelegate) => false;
}
