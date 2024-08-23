import 'package:flutter/material.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/theme/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.onPressed,
    this.isObs = false,
    this.lines = 1,
  });
  final String hintText;
  final VoidCallback onPressed;
  final bool isObs;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onPressed,
      obscureText: isObs,
      maxLines: lines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.textFieldHintStyle,
        fillColor: AppColor.textFieldBackground,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
