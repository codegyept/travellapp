import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class DefaultTextButton extends StatelessWidget
{
  const DefaultTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize,
  });

  final VoidCallback? onPressed;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            color: AppColors.textAndBackgroundColorButton,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }
}
