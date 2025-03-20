import 'package:flutter/material.dart';
import 'package:fruitshup/core/entities/cart_item_entity.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_item_buttons.dart';
import 'package:fruitshup/generated/l10n.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

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
              cartItemEntity.product.name,
              style: AppTextStyles.regular13.copyWith(
                color: const Color(0xff06161C),
              ),
            ),
            Text(
              "${cartItemEntity.calculateWeight()} ${S.of(context).kg}",
              style: AppTextStyles.bold16.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
            CartItemButtons(
              quantity: cartItemEntity.quantity,
            ),
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
              "${cartItemEntity.calculateTotalPrice()} ${S.of(context).pound}",
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
