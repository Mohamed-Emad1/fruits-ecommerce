import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/custom_notification_widget.dart';

AppBar buildGeneralAppBar(BuildContext context, {required Text text}) {
  return AppBar(
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomNotificationWidget(),
      ),
    ],
    title: text,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
