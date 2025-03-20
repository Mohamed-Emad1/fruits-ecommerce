import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruitshup/generated/l10n.dart';

class CartViewHeader extends StatelessWidget {
  const CartViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xffEBF9F1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).you_have,
            style: AppTextStyles.regular13.copyWith(
              color: const Color(0xff1B5E37),
            ),
          ),
          Text(
            " ${context.watch<CartCubit>().cart.cartItems.length} ",
            style: AppTextStyles.regular13.copyWith(
              color: const Color(0xff1B5E37),
            ),
          ),
          Text(
            S.of(context).items,
            style: AppTextStyles.regular13.copyWith(
              color: const Color(0xff1B5E37),
            ),
          ),
        ],
      ),
    );
  }
}
