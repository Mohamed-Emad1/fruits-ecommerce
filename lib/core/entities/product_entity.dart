import 'package:fruitshup/core/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCallories;
  final int unitAmount;
  final num averageRating = 0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;

  ProductEntity(
      {required this.reviews,
      required this.name,
      required this.price,
      required this.code,
      required this.expirationMonths,
      required this.isOrganic,
      required this.numOfCallories,
      required this.unitAmount,
      required this.description,
      required this.isFeatured,
      this.imageUrl});
}
