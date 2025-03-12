import 'package:fruitshup/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    reviews: [], // No reviews for the dummy product
    name: "Apple",
    price: 1.99,
    code: "AP123",
    expirationMonths: 12,
    isOrganic: true,
    numOfCallories: 95,
    unitAmount: 1,
    description: "A fresh and juicy apple.",
    // image: File(Assets.imagesWatermelon), // Replace with an actual image file path as needed
    isFeatured: true,
    imageUrl:
        null,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
