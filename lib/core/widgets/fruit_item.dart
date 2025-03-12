import 'package:flutter/material.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/core/widgets/custom_network_image.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 2,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline_sharp),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                Flexible(
                  child: product.imageUrl == null
                      ? Container(
                          color: Colors.grey,
                        )
                      : CustomNetworkImage(product: product),
                ),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  trailing: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text.rich(TextSpan(
                    style: AppTextStyles.bold13,
                    children: [
                      TextSpan(
                        text: "${product.name} \n",
                      ),
                      TextSpan(
                          text: "${product.price} جنيه ",
                          style: AppTextStyles.bold13
                              .copyWith(color: AppColors.yellow)),
                      TextSpan(
                        text: "/ ${product.unitAmount}",
                        style: AppTextStyles.semiBold13
                            .copyWith(color: AppColors.lightYellow),
                      ),
                    ],
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


