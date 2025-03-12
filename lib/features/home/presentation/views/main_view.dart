import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_bottom_navigationbar.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationbar(),
      body: SafeArea(
        child: HomeView(),
      ),
    );
  }
}
