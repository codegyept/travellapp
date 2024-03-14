import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';

class CustomRowTitle extends StatelessWidget {
  const CustomRowTitle({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.blackColorForTitleTexts,
          ),
        ),
        const Spacer(),
        DefaultTextButton(
          text: AppStrings.textButtonNameOfHomeScreen,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
