import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';

class MySearchTextFormField extends StatelessWidget {
  final TextEditingController controller;

  const MySearchTextFormField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.backgroundColor2,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.secondaryTextColor3)),
          contentPadding: EdgeInsets.all(16.w),
          hintText: 'Search doctor or health issue',
          hintStyle: FontHelper.myFont(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.secondaryTextColor),
          prefixIcon: Icon(
            Iconsax.search_normal_1,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
