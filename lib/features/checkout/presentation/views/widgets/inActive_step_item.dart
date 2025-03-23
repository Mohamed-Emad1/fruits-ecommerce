import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem(
      {super.key, required this.title, required this.number});

  final String title, number;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xffF2F3F3),
          child: Center(
            child: Text(
              number,
              style: AppTextStyles.semiBold13,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style:
              AppTextStyles.semiBold13.copyWith(color: const Color(0xffAAAAAA)),
        ),
      ],
    );
  }
}
