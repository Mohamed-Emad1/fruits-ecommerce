import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/services/service_locator.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';
import 'package:fruitshup/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';
import 'package:fruitshup/generated/l10n.dart';

import '../../../../core/widgets/custom_appbar.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).login),
        body: const SafeArea(
          child: SigninViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
