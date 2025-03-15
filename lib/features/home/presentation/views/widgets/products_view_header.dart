import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/generated/l10n.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({super.key, required this.productsLength});
  final int productsLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$productsLength ${S.of(context).results}",
            style: AppTextStyles.bold16,
          ),
          SvgPicture.asset(Assets.imagesFilter)
        ],
      ),
    );
  }
}
