import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/auth/presentation/manager/sign_up_cubit/signup_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/terms_and_conditions.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'have_an_account.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, fullName;
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
              CustomTextFormField(
                onSaved: (value) {
                  fullName = value!;
                },
                hintText: S.of(context).full_name,
                textInputType: TextInputType.name,
              ),
              kSizedBox16,
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                textInputType: TextInputType.emailAddress,
              ),
              kSizedBox16,
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<SignupCubit>(context)
                        .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                            fullName: fullName);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 26,
              ),
              const HaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
