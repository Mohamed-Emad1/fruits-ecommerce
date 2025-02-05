import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          SizedBox(
            width: MediaQuery.of(context).size.width - (32) - 48,
            child: Text.rich(
              TextSpan(
                style: AppTextStyles.semiBold13,
                children: [
                  TextSpan(text: S.of(context).terms),
                  TextSpan(
                    text: S.of(context).conditions,
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
