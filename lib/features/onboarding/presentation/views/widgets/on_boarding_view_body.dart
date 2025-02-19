import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/widgets/custom_button.dart';
import 'package:fruitshup/features/onboarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_prefrences_singletone.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/presentation/views/signin_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPageIndex == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPageIndex == 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              text: S.of(context).start_now,
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(SigninView.routeName);
                SharedPreferencesSingleton.setBool(kisOnBoardingView, true);
              },
            ),
          ),
        ),
        const SizedBox(
          height: 42,
        ),
      ],
    );
  }
}
