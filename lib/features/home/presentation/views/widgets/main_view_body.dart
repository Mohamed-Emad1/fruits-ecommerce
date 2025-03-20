import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/cart_view.dart';
import 'package:fruitshup/features/home/presentation/views/home_view.dart';
import 'package:fruitshup/features/home/presentation/views/products_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: const [
        HomeView(),
        ProductsView(),
        CartView(),
      ],
    );
  }
}
