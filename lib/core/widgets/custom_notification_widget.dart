import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitshup/core/utils/app_images.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:
          const ShapeDecoration(shape: OvalBorder(), color: Color(0xffEEF8ED)),
      child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}
