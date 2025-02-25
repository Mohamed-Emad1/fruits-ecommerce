import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/helper_functions/build_error_bar.dart';
import 'package:fruitshup/core/helper_functions/build_success_snackbar.dart';
import 'package:fruitshup/core/widgets/custom_progress_hus.dart';
import 'package:fruitshup/features/auth/presentation/manager/sign_up_cubit/signup_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          buildSucessSnackBar(context, S.current.sign_in_successfully);
        }
        if (state is SignupError) {
          buildErrorBar(context, state.failure);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignupLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
