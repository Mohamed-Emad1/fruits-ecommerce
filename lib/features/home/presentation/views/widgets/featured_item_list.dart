import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedItemList extends StatelessWidget {
  const FeaturedItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => const FeaturedItem(),
        ),
      ),
    );
  }
}
