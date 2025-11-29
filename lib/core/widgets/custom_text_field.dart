import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textContent,
    this.textContentColor,
    this.onChanged,
    this.maxLines,
  });
  final String textContent;
  final Color? textContentColor;
  final void Function(String?)? onChanged;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: textContent,
        hintStyle: AppStyles.regular16.copyWith(
          color: textContentColor ?? const Color(0xFF8C8B8B),
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Color(0xFFE9E8E8)),
    );
  }
}
