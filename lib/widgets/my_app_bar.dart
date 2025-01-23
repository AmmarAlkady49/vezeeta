import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: FontHelper.myFont(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTextColor,
              ),
            ),
            Text(
              'Hi James',
              style: FontHelper.myFont(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryTextColor,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          'assets/images/Face_Frame.svg',
          height: 56.h,
          width: 56.w,
        )
      ],
    );
  }
}
