import 'package:flutter/material.dart';
import 'package:fruitshup/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:fruitshup/generated/l10n.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          getSteps().length,
          (index) {
            return StepItem(
              title: getSteps()[index],
              index: index.toString(),
              isActive: true,
            );
          },
        ));
  }


}

List<String> getSteps() {
  return [
    S.current.checkout,
    S.current.address,
    S.current.payment,
    S.current.review,
  ];
}
