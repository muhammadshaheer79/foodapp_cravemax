class FoodItem {
  final String id;
  final String name;
  final String category;
  final String description;
  final String imageUrl;
  final String imagePath;
  final double price;
  final double rating;
  final int totalReviews;
  final String duration; // e.g., "8-10 min" or "15 min"
  final String servingSize; // e.g., "8-10 min" or "15 min"
  final int calories; // e.g., 124 or 500
  final int proteinGrams;
  final int carbsGrams;
  final int fatsGrams;
  final bool isFavorite;
  final bool isBestseller;
  final bool isVeg; // Displays green dot if true, red if false

  const FoodItem({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.totalReviews,
    required this.duration,
    required this.servingSize,
    required this.calories,
    required this.proteinGrams,
    required this.carbsGrams,
    required this.fatsGrams,
    this.isFavorite = false,
    this.isBestseller = false,
    this.isVeg = false,
  });
}
