import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/services/firebase_auth_service.dart';
import 'package:fruitshup/core/services/service.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/features/home/presentation/views/home_view.dart';
import 'package:fruitshup/features/onboarding/presentation/views/onboarding_view.dart';

import '../../../../../core/services/shared_prefrences_singletone.dart';
import '../../../../auth/presentation/views/signin_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text("SplashViewBody"),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        Center(child: SvgPicture.asset(Assets.imagesLogo)),
        SvgPicture.asset(
          Assets.imagesSplashCircles,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen =
        SharedPreferencesSingleton.getBool(kisOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        if (getIt.get<FirebaseAuthService>().isLoggedIn()) {
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, SigninView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
