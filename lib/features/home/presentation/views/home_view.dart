import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruitshup/core/repos/product_repo.dart';
import 'package:fruitshup/core/services/service_locator.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        getIt.get<ProductRepo>()
      ),
      child: const HomeViewBody(),
    );
  }
}
