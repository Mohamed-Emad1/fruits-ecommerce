import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/generated/l10n.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
        onPressed: () {},
        child: Text(S.of(context).start_now),
      ),
    );
  }
}
