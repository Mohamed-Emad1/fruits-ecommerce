  import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: AppTextStyles.bold19,
      ),
    );
  }
