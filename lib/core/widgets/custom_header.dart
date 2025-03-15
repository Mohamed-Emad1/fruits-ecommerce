import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/core/widgets/custom_notification_widget.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Center(
          child: Text(
            title,
            style: AppTextStyles.bold16,
          ),
        ),
        const CustomNotificationWidget(),
      ],
    );
  }
}
