import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/terms_and_conditions.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_from_text_field.dart';
import '../../../../../generated/l10n.dart';
import 'have_an_account.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomFromTextField(
              hintText: S.of(context).full_name,
              textInputType: TextInputType.name,
            ),
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
            const TermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: S.of(context).create_new_account,
              onPressed: () {},
            ),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAccount()
          ],
        ),
      ),
    );
  }
}
