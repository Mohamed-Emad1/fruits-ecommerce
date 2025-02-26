import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 163 / 214,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 8,),
        itemBuilder: (index, context) {
          return const FruitItem();
        });
  }
}
