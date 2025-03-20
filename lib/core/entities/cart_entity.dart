import 'package:fruitshup/core/entities/cart_item_entity.dart';
import 'package:fruitshup/core/entities/product_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  addItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  bool isExists(ProductEntity productEntity) {
    for (var item in cartItems) {
      if (item.product == productEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity productEntity){
      for (var item in cartItems) {
      if (item.product == productEntity) {
        return item;
      }
    }
    return CartItemEntity(product: productEntity , quantity: 1);
  }
}
