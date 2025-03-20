import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_bottom_navigationbar.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/main_view_body_bloc_consumer.dart';

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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationbar(
          valueChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: MainViewBodyBlocConsumer(currentIndex: currentIndex),
        ),
      ),
    );
  }
}
