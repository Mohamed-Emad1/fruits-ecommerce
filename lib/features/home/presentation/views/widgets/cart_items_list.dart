import 'package:flutter/material.dart';
import 'package:fruitshup/core/entities/cart_item_entity.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Divider(
                color: Color(0xffF1F1F1),
              ),
              CartItem(
                cartItemEntity: cartItems[index],
              ),
            ],
          );
        });
  }
}
