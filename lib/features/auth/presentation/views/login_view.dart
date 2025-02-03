import 'package:flutter/material.dart';
import 'package:fruitshup/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

import '../../../../core/widgets/custom_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).login),
      body: const SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
