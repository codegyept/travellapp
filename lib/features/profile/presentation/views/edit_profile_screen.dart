import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';
import 'package:rehlatyuae/features/profile/presentation/views/widgets/profile_photo_section.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.editProfile,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
      ),
      body: ListView(
        children: [
          const ProfilePhotoSection(),
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
              top: 30.h,
            ),
            child: CustomActionButton(
              text: AppStrings.save,
              borderRadius: BorderRadius.circular(16.r),
              backGroundColor: AppColors.orange,
              onTap: () {},
              width: double.infinity,
              height: 50.h,
            ),
          ),
        ],
      ),
    );
  }
}
