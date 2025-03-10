import 'dart:io';

import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/models/review_model.dart';

class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCallories;
  final int unitAmount;
  final List<ReviewModel> reviews;
  final int sellingCount;

  ProductModel(
      {required this.name,
      required this.sellingCount,
      required this.price,
      required this.code,
      required this.expirationMonths,
      required this.isOrganic,
      required this.numOfCallories,
      required this.unitAmount,
      required this.description,
      required this.image,
      required this.isFeatured,
      required this.reviews,
      this.imageUrl});

  // factory ProductModel.fromEntity(ProductEntity entity) {
  //   return ProductModel(
  //       name: entity.name,
  //       price: entity.price,
  //       code: entity.code,
  //       description: entity.description,
  //       image: entity.image,
  //       isFeatured: entity.isFeatured,
  //       imageUrl: entity.imageUrl,
  //       expirationMonths: entity.expirationMonths,
  //       isOrganic: entity.isOrganic,
  //       numOfCallories: entity.numOfCallories,
  //       unitAmount: entity.unitAmount,
  //       reviews: entity.reviews
  //           .map((element) => ReviewModel.fromEntity(element))
  //           .toList());
  // }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
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
      image: File(json["image"]),
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
        image: image,
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
