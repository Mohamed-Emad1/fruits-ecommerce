import 'package:flutter/material.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/core/widgets/custom_header.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/cart_items_list.dart';
import 'package:fruitshup/generated/l10n.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CustomHeader(
                      title: S.of(context).shopping_cart,
                      showNofification: false,
                    ),
                    kSizedBox16,
                    const CartViewHeader(),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
              const CartItemsList(),
            ],
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.07,
          left: 16,
          right: 16,
          child: CustomButton(
            text: "Checkout",
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
