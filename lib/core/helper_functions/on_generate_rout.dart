import 'package:flutter/material.dart';
import 'package:fruitshup/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruitshup/features/home/presentation/views/home_view.dart';
import 'package:fruitshup/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruitshup/features/splash/presentation/views/splash_view.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/signin_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (_) => const BestSellingView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
