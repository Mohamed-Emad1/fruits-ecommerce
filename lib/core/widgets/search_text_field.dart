import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {super.key, required this.hintText, this.suffixIcon, this.prefixIcon});

  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        // onSaved: onSaved,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return S.of(context).enater_value;
        //   }
        //   return null;
        // },

        decoration: InputDecoration(
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: suffixIcon),
          ),
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: prefixIcon),
          ),
          fillColor: Colors.white,
          filled: true,
          border: buildBorder(),
          hintText: hintText,
          hintStyle: AppTextStyles.regular13.copyWith(
            color: const Color(0xff949D9E),
          ),
          enabledBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    );
  }
}
