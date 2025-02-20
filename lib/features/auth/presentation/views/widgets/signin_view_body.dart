import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/core/widgets/password_filed.dart';
import 'package:fruitshup/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruitshup/generated/l10n.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              kSizedBox16,
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                textInputType: TextInputType.emailAddress,
              ),
              kSizedBox16,
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              kSizedBox16,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).forget_password,
                  style: AppTextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ),
              kSizedBox16,
              kSizedBox16,
              CustomButton(
                text: S.of(context).sign_in,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    BlocProvider.of<SigninCubit>(context)
                        .signInWithEmailAndPassword(
                            email: email, password: password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              kSizedBox16,
              kSizedBox16,
              const DontHaveAccountWidget(),
              const SizedBox(
                height: 49,
              ),
              const OrDivider(),
              kSizedBox16,
              SocialLoginButton(
                onPressed: () {
                  BlocProvider.of<SigninCubit>(context).signInWithGoogle();
                },
                text: S.of(context).google,
                image: Assets.imagesGoogleIcon,
              ),
              kSizedBox16,
              SocialLoginButton(
                onPressed: () {},
                text: S.of(context).apple,
                image: Assets.imagesAppleIcon,
              ),
              kSizedBox16,
              SocialLoginButton(
                onPressed: () {
                  BlocProvider.of<SigninCubit>(context).signInWithFacebook();
                },
                text: S.of(context).facebook,
                image: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
