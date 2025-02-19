import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_colors.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/generated/l10n.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.textInputType = TextInputType.text,
      this.suffixIcon, this.onSaved, this.obsecureText =false});

  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).enater_value;
        }
        return null;
      },
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
