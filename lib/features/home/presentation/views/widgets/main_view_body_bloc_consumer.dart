import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/helper_functions/build_error_bar.dart';
import 'package:fruitshup/core/helper_functions/build_success_snackbar.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/main_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
        listener: (context, state) {
          if (state is CartItemAdded) {
            // BlocProvider.of<CartCubit>(context).addProduct(context);
            buildSucessSnackBar(context, S.current.add_to_cart);
          } else if (state is CartItemRemoved) {
            buildErrorBar(context, S.current.removed_from_cart);
          }
        },
        child: MainViewBody(currentIndex: currentIndex));
  }
}
