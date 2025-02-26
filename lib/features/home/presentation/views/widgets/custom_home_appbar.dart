import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/generated/l10n.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).morning,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xff949D9E),
          )),
      subtitle: const Text(
        "Mostafa",
        style: AppTextStyles.bold16,
      ),
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: Container(
        padding: const EdgeInsets.all(16),
        decoration: const ShapeDecoration(
            shape: OvalBorder(), color: Color(0xffEEF8ED)),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),
    );
  }
}
