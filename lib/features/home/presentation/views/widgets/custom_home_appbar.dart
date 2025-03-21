import 'package:flutter/material.dart';
import 'package:fruitshup/core/helper_functions/get_user.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/core/widgets/custom_notification_widget.dart';
import 'package:fruitshup/generated/l10n.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        S.of(context).morning,
        style: AppTextStyles.regular16.copyWith(
          color: const Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: AppTextStyles.bold16,
      ),
      leading: Image.asset(Assets.imagesProfileImage),
      trailing: const CustomNotificationWidget(),
    );
  }
}
