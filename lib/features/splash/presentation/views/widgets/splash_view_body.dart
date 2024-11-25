import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.imagesPlant),
        SvgPicture.asset(Assets.imagesAppIcon),
        // SvgPicture.asset(Assets.imagesSplashCircles),

      ],
    );
  }
}
