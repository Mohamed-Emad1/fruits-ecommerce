import 'package:flutter/material.dart';
import 'package:fruitshup/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:fruitshup/generated/l10n.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          title: S.of(context).Delivery_from_Location,
          subTitle: S.of(context).Cash_on_Delivery,
          price: '${12} ${S.of(context).pound}',
        ),
        const SizedBox(
          height: 8,
        ),
        ShippingItem(
          title: S.of(context).Buy_Now,
          subTitle: S.of(context).payment_method,
          price: S.of(context).free,
        ),
      ],
    );
  }
}
