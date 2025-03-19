import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/cart_view.dart';
import 'package:fruitshup/features/home/presentation/views/home_view.dart';
import 'package:fruitshup/features/home/presentation/views/products_view.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_bottom_navigationbar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = '/home';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationbar(
        valueChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: const [
            HomeView(),
            ProductsView(),
            CartView(),
          ],
        ),
      ),
    );
  }
}
