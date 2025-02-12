import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/custom_checkbox.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          onChanged: (value) {
            // log("value is = $value");
            isTermsAccepted = !isTermsAccepted;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
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
    );
  }
}
