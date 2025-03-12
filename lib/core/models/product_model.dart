import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/helper_functions/get_average_rating.dart';
import 'package:fruitshup/core/models/review_model.dart';

class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCallories;
  final num averageRating;
  final int unitAmount;
  final List<ReviewModel> reviews;
  final int sellingCount;

  ProductModel(
      {required this.name,
      required this.averageRating,
      required this.sellingCount,
      required this.price,
      required this.code,
      required this.expirationMonths,
      required this.isOrganic,
      required this.numOfCallories,
      required this.unitAmount,
      required this.description,
      required this.isFeatured,
      required this.reviews,
      this.imageUrl});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      averageRating: getAverageRating(json["reviews"]),
      sellingCount: json["sellingCount"],
      name: json["name"],
      price: json["price"],
      code: json["code"],
      description: json["description"],
      isFeatured: json["isFeatured"],
      imageUrl: json["imageUrl"],
      expirationMonths: json["expirationMonths"],
      isOrganic: json["isOrganic"],
      numOfCallories: json["numOfCallories"],
      unitAmount: json["unitAmount"],
      reviews: json["reviews"] != null
          ? List<ReviewModel>.from(
              json["reviews"].map((e) => ReviewModel.fromJson(e)))
          : [],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
        name: name,
        price: price,
        code: code,
        description: description,
        isFeatured: isFeatured,
        imageUrl: imageUrl,
        expirationMonths: expirationMonths,
        isOrganic: isOrganic,
        numOfCallories: numOfCallories,
        unitAmount: unitAmount,
        reviews: reviews.map((e) => e.toEntity()).toList());
  }

  toJson() {
    return {
      "name": name,
      "price": price,
      "code": code,
      "description": description,
      "isFeatured": isFeatured,
      "imageUrl": imageUrl,
      "expirationMonths": expirationMonths,
      "isOrganic": isOrganic,
      "numOfCallories": numOfCallories,
      "unitAmount": unitAmount,
      "reviews": reviews.map((e) => e.toJson()).toList()
    };
  }
}


