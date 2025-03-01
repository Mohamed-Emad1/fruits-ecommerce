import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_bottom_navigationbar.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationbar(),
      body: SafeArea(
        
          child: HomeViewBody()),
    );
  }
}
