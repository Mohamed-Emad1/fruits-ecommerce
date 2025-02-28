import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/buiuld_app_bar.dart';
import 'package:fruitshup/features/best_selling_fruits/presentation/views/widgets/best_Selling_view_body.dart';
import 'package:fruitshup/generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = '/bestSelling';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildGeneralAppBar(
        context,
        text: Text(S.of(context).best_selling),
      ),
      body: const SafeArea(
        child: BestSellingViewBody(),
      ),
    );
  }
}
