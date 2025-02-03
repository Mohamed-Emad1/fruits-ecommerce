import 'package:flutter/material.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruitshup/generated/l10n.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_from_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            kSizedBox16,
            CustomFromTextField(
              hintText: S.of(context).email,
              textInputType: TextInputType.emailAddress,
            ),
            kSizedBox16,
            CustomFromTextField(
              suffixIcon: const Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              hintText: S.of(context).password,
              textInputType: TextInputType.visiblePassword,
            ),
            kSizedBox16,
            Text(
              textAlign: TextAlign.end,
              S.of(context).forget_password,
              style: AppTextStyles.regular13
                  .copyWith(color: AppColors.lightPrimaryColor),
            ),
            kSizedBox16,
            kSizedBox16,
            CustomButton(text: S.of(context).sign_in, onPressed: () {}),
            kSizedBox16,
            kSizedBox16,
            const DontHaveAccountWidget(),

            
          ],
        ),
      ),
    );
  }
}


