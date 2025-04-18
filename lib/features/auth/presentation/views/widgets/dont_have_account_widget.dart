import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/features/auth/presentation/views/sign_up_view.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: AppTextStyles.semiBold16,
        children: [
          TextSpan(
            text: S.of(context).donot_have_an_account,
            style: AppTextStyles.semiBold16.copyWith(color: AppColors.grayText),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            text: S.of(context).create_account,
            style: AppTextStyles.semiBold16
                .copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
