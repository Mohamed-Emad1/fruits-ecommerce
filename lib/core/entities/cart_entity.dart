import 'package:fruitshup/core/entities/cart_item_entity.dart';
import 'package:fruitshup/core/entities/product_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  addItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += item.calculateTotalPrice();
    }
    return totalPrice;
  }

  bool isExists(ProductEntity productEntity) {
    for (var item in cartItems) {
      if (item.product == productEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity productEntity) {
    for (var item in cartItems) {
      if (item.product == productEntity) {
        return item;
      }
    }
    return CartItemEntity(product: productEntity, quantity: 1);
  }

  void removeItem(CartItemEntity cartItemEntity) {
    cartItems.remove(cartItemEntity);
  }
}
