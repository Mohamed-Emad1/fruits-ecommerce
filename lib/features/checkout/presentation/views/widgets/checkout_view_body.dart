import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruitshup/features/checkout/presentation/views/widgets/checkout_steps_page_view.dart';
import 'package:fruitshup/generated/l10n.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CheckoutSteps(),
          CheckoutStepsPageView(pageController: _pageController),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            text: S.of(context).next,
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}


