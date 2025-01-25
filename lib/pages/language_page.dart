import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';
import 'package:veseeta/generated/l10n.dart';
import 'package:veseeta/home_cubit/home_cubit.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(S.of(context).language),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        shadowColor: Colors.black,
        elevation: 4,
        foregroundColor: Colors.white,
        titleTextStyle: FontHelper.myFont(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            chooseLang(
              onTap: () {
                HomeCubit().changeLanguage('en');
              },
              title: 'English',
            ),
            SizedBox(height: 16.h),
            chooseLang(
              onTap: () {
                HomeCubit().changeLanguage('ar');
              },
              title: 'العربيه',
            ),
          ],
        ),
      ),
    );
  }

  InkWell chooseLang({required VoidCallback onTap, required String title}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border:  Border.all(color: Colors.black38),
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(26.r),
              child: Image.asset(
                title == 'English'
                    ? 'assets/images/enFlag.png'
                    : 'assets/images/arFlag.png',
                height: 50.h,
                width: 50.w,
              ),
            ),
            SizedBox(width: 16.w),
            Text(
              title == 'English' ? 'English' : 'العربيه',
              style: FontHelper.myFont(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryTextColor),
            )
          ],
        ),
      ),
    );
  }
}
