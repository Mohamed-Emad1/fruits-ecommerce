import 'package:flutter/material.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/widgets/fruit_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.items});

  final List<ProductEntity> items;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 163 / 214,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return FruitItem(
            product: items[index],
          );
        });
  }
}
