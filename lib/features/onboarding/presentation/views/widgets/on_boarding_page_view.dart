import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/features/onboarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: S.of(context).description,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).welcome_message),
            ],
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: S.of(context).offer,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).call_to_action),
              const Text(" HUB"),
              const Text("Fruit"),
            ],
          ),
        ),
      ],
    );
  }
}
