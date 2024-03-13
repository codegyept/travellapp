import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class PrimaryTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final bool isObscureText;
  final bool autofocus;
  final bool readOnly;
  final bool isEnabled;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final FormFieldValidator? validator;
  final void Function()? onTap;

  const PrimaryTextField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.isObscureText = false,
    this.inputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.autofocus = false,
    this.validator,
    this.readOnly = false,
    this.isEnabled = true,
    this.onTap,
  });

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  bool isVisibleText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Text(
              widget.label!,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.w400,
                height: 1.42,
              ),
            ),
          if (widget.label != null)
            SizedBox(
              height: 8.h,
            ),
          TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: widget.textInputAction,
            keyboardType: widget.inputType,
            obscureText: widget.isObscureText && !isVisibleText,
            onChanged: (value) {
              setState(() {});
            },
            textDirection: widget.inputType == TextInputType.phone
                ? TextDirection.ltr
                : widget.controller.text.isNotEmpty && widget.controller.text.trim().isNotEmpty
                    ? RegExp(r'^[a-zA-Z0-9٠-٩]').hasMatch(widget.controller.text)
                        ? TextDirection.ltr
                        : TextDirection.rtl
                    : null,
            decoration: InputDecoration(
              hintText: widget.hint,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(
                  color: AppColors.redAppColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(
                  color: AppColors.textAndBackgroundColorButton,
                ),
              ),
              suffixIcon: widget.isObscureText
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isVisibleText = !isVisibleText;
                        });
                      },
                      icon: isVisibleText
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    )
                  : null,
              errorStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: AppColors.redAppColor,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w800,
                  ),
              errorMaxLines: 2,
            ),
            readOnly: widget.readOnly,
            onTap: widget.onTap,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            enabled: widget.isEnabled,
          ),
        ],
      ),
    );
  }
}
