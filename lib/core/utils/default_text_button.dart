import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class DefaultTextButton extends StatelessWidget {
  const DefaultTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.style,
  });

  final VoidCallback? onPressed;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: style ??
            Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.textAndBackgroundColorButton,
                ),
      ),
    );
  }
}
