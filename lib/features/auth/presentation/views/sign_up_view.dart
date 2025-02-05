import 'package:flutter/material.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/sign_up_view_body.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = '/signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).new_account),
      body: const SignUpViewBody(),
    );
  }
}
