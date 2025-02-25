import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/helper_functions/build_error_bar.dart';
import 'package:fruitshup/core/helper_functions/build_success_snackbar.dart';
import 'package:fruitshup/core/widgets/custom_progress_hus.dart';
import 'package:fruitshup/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          buildSucessSnackBar(context, S.current.sign_in_successfully);
        }
        if (state is SigninError) {
          buildErrorBar(context, state.error);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
