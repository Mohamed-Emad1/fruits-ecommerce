import 'package:flutter/material.dart';
import 'package:fruitshup/features/onboarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}
