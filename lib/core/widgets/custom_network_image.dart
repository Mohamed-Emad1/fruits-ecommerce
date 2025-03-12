import 'package:flutter/material.dart';
import 'package:fruitshup/core/entities/product_entity.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Image.network(product.imageUrl!);
  }
}
