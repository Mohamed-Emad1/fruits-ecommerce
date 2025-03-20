import 'package:fruitshup/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;
  int quantity;

  CartItemEntity({required this.product, required this.quantity});

  num calculateTotalPrice() {
    return product.price * quantity;
  }

  num calculateWeight() {
    return product.unitAmount * quantity;
  }

  void increaseQuantity() {
    quantity++;
  }
  void decreaseQuantity() {
    quantity--;
  }
}