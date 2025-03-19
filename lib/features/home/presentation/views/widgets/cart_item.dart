import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // padding: const EdgeInsets.all(16),
          width: 73,
          height: 92,
          decoration: const BoxDecoration(
            color: Color(0xffF3F5F7),
            image: DecorationImage(
              image: AssetImage(Assets.imagesWatermelon),
            ),
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Watermelon",
              style: AppTextStyles.regular13.copyWith(
                color: const Color(0xff06161C),
              ),
            ),
            Text(
              "1 kg",
              style: AppTextStyles.bold16.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            const CartItemButtons(),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
            Text(
              "2\$",
              style: AppTextStyles.bold16.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
