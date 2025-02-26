import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).best_selling,
          style: AppTextStyles.bold16,
        ),
        Text(
          S.of(context).more,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xff949D9E),
          ),
        )
      ],
    );
  }
}
