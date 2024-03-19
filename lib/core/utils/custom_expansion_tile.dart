import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? content;
  final List<Widget> children;
  final bool initiallyExpanded;

  const CustomExpansionTile({
    required this.title,
    this.content,
    this.initiallyExpanded = true,
    this.children = const [],
    super.key,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  double turns = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ExpansionTile(
        collapsedBackgroundColor: AppColors.textAndBackgroundColorButton,
        backgroundColor: AppColors.textAndBackgroundColorButton,
        tilePadding: const EdgeInsets.symmetric(horizontal: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        iconColor: AppColors.white,
        trailing: AnimatedRotation(
          duration: const Duration(milliseconds: 300),
          turns: turns,
          child: SvgPicture.asset(AppAssets.arrowUp),
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        onExpansionChanged: (value) {
          setState(() {
            turns = value ? 0 : 0.5;
          });
        },
        childrenPadding: EdgeInsets.zero,
        initiallyExpanded: widget.initiallyExpanded,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 30,
            ),
            decoration: const BoxDecoration(
              color: AppColors.backgroundColorExpansionAndText,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(9),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.content != null)
                  Text(
                    widget.content!,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ...widget.children
              ],
            ),
          ),
        ],
      ),
    );
  }
}
