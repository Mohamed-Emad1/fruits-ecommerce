import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/custom_appbar.dart';
import 'package:fruitshup/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: S.of(context).checkout, context),
      body: const SafeArea(
        child: CheckoutViewBody(),
      ),
    );
  }
}
