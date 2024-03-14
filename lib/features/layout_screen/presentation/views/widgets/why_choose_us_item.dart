import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyChooseUSItem extends StatelessWidget {
  const WhyChooseUSItem({
    super.key,
    required this.child,
    required this.text,
    required this.style,
     this.descriptionText,
     this.descriptionTextStyle,
  });

  final Widget child;
  final String text;
  final String?descriptionText;
  final TextStyle style;
  final TextStyle?descriptionTextStyle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: child,
              ),
              SizedBox(width:6.0.w,),
              Expanded(
                child: Text(
                  text,
                  style: style,
                ),
              ),
            ],
          ),
          SizedBox(height:10.0.h,),
          if(descriptionText != null && descriptionText!.isNotEmpty)
          Text(
              descriptionText!,
            style: descriptionTextStyle ,
          ) ,
        ],
      ),
    );
  }
}
