import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/checkout/presentation/views/checkout_view.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruitshup/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruitshup/generated/l10n.dart';

class CartCheckoutButton extends StatelessWidget {
  const CartCheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          text:
              "${S.of(context).pay} ${context.watch<CartCubit>().cart.calculateTotalPrice()}  ${S.of(context).pound}",
          onPressed: () {
            Navigator.pushNamed(context, CheckoutView.routeName);
          },
        );
      },
    );
  }
}
