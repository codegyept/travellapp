import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController?controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
         border:Border.all(color: AppColors.greySearchText),
      ),
      child:  TextField(
        controller:controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: AppStrings.searchTextFieldHintText,
          hintStyle: TextStyle(color: AppColors.greySearchText),
          prefixIcon:  Icon(
          Icons.search,
          color: AppColors.greySearchText,
        ),
        ),
      ),
    );
  }
}
