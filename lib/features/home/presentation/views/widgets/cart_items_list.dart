import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              Divider(
                color: Color(0xffF1F1F1),
              ),
              CartItem(),
            ],
          );
        });
  }
}
