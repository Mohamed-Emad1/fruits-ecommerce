import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
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
                  height: 32,
                ),
                Image.asset(Assets.imagesWatermelon),
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
                      const TextSpan(
                        text: "فراوله \n",
                      ),
                      TextSpan(
                          text: "30 جنيه ",
                          style: AppTextStyles.bold13
                              .copyWith(color: AppColors.yellow)),
                      TextSpan(
                        text: "/ للكيلو",
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
