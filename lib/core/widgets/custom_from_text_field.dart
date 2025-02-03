import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

class CustomFromTextField extends StatelessWidget {
  const CustomFromTextField(
      {super.key,
      required this.hintText,
      this.textInputType = TextInputType.text,
      this.suffixIcon });

  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: AppColors.textFromFieldColor,
        filled: true,
        border: buildBorder(),
        hintText: hintText,
        hintStyle: AppTextStyles.bold13.copyWith(
          color: const Color(0xff949D9E),
        ),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 185, 187, 187),
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    );
  }
}
