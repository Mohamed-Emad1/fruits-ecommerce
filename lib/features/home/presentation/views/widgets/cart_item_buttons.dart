import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item_button.dart';

class CartItemButtons extends StatelessWidget {
  const CartItemButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CartItemButton(
          backgroundColor: AppColors.primaryColor,
          icon: Icons.add,
          iconColor: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "1",
          style: AppTextStyles.bold16.copyWith(
            color: const Color(0xff06140C),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CartItemButton(
          backgroundColor: Color(0xffF3F5F7),
          icon: Icons.remove,
          iconColor: Color(0xff979899),
        ),
      ],
    );
  }
}
