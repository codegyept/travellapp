import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomRadioTile extends StatefulWidget {
  final String name;
  final String number;
  final String imagePath;
  final String value;
  final String selectedValue;
  final void Function(String?) onChanged;

  const CustomRadioTile({
    required this.name,
    required this.number,
    required this.imagePath,
    required this.value,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  @override
  State<CustomRadioTile> createState() => _CustomRadioTileState();
}

class _CustomRadioTileState extends State<CustomRadioTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(widget.value);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 10.w,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            width: 1.h,
            color: AppColors.black.withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(widget.imagePath),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.number,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Radio(
              value: widget.value,
              groupValue: widget.selectedValue,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  return AppColors.textAndBackgroundColorButton;
                },
              ),
              onChanged: widget.onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
