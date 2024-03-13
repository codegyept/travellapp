import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      const CustomCircleAvatar(
                        backgroundImage: AssetImage(AppAssets.profile),
                        borderWidth: 10,
                        radius: 70,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CustomCircleAvatar(
                          backgroundColor: AppColors.blogItemContainerBackgroundColor.withOpacity(0.5),
                          radius: 30,
                          iconData: CupertinoIcons.camera,
                          iconSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    "Ryo Elif radioman",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  const Text(
                    "S1 Information",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF606060),
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            hint: 'Ryo alif ramadhan',
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            hint: '12/12/2024',
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            hint: '00962 000000000',
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            hint: 'mail@gmail.com',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 30,
            ),
            child: CustomActionButton(
              text: 'Save',
              borderRadius: BorderRadius.circular(16),
              backGroundColor: AppColors.orange,
              onTap: () {},
              style: const TextStyle(color: AppColors.white),
              width: double.infinity,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
