import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: const BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              child: SvgPicture.asset(image),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: AppTextStyles.semiBold11
                  .copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
