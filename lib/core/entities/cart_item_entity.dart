import 'package:equatable/equatable.dart';
import 'package:fruitshup/core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
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

  @override
  // TODO: implement props
  List<Object?> get props => [product];
}
