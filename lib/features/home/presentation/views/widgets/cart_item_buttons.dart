import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/entities/cart_item_entity.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item_button.dart';

class CartItemButtons extends StatelessWidget {
  const CartItemButtons({
    super.key,
    required this.cartItemEntity,
  });

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemButton(
          backgroundColor: AppColors.primaryColor,
          icon: Icons.add,
          iconColor: Colors.white,
          onPressed: () {
            cartItemEntity.increaseQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          cartItemEntity.quantity.toString(),
          style: AppTextStyles.bold16.copyWith(
            color: const Color(0xff06140C),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CartItemButton(
          backgroundColor: const Color(0xffF3F5F7),
          icon: Icons.remove,
          iconColor: const Color(0xff979899),
          onPressed: () {
            cartItemEntity.decreaseQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
      ],
    );
  }
}
