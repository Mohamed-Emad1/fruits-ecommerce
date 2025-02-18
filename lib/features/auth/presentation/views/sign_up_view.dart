import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/services/service.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitshup/features/auth/presentation/manager/sign_up_cubit/signup_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = '/signUp';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).new_account),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
