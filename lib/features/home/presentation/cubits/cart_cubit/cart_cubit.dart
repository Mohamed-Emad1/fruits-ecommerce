import 'package:bloc/bloc.dart';
import 'package:fruitshup/core/entities/cart_entity.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final CartEntity cart = CartEntity(cartItems: []);

  void addProduct(ProductEntity product) {
    var cartItem = cart.getCartItem(product);
    if (cart.isExists(product)) {
      cartItem.increaseQuantity();
    } else {
      cart.cartItems.add(cartItem);
    }
    emit(CartAdded());
  }
}
