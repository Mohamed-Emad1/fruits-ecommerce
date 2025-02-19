import 'package:flutter/material.dart';
import 'package:fruitshup/core/widgets/custom_text_form_field.dart';
import 'package:fruitshup/generated/l10n.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obsecureText: obsecureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obsecureText = !obsecureText;
          setState(() {});
        },
        child: Icon(
          obsecureText ? Icons.remove_red_eye : Icons.visibility_off,
          color: const Color(0xffC9CECF),
        ),
      ),
      hintText: S.of(context).password,
      textInputType: TextInputType.visiblePassword,
    );
  }
}
