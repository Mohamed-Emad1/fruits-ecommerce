import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/onboarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: S.of(context).description,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).welcome_message,
                style: AppTextStyles.bold23,
              ),
              Text(
                "HUB",
                style: AppTextStyles.bold23.copyWith(color: AppColors.yellow),
              ),
              Text(
                "Fruit",
                style: AppTextStyles.bold23
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: S.of(context).offer,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).call_to_action,
                style: AppTextStyles.bold23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
