import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';
import 'package:veseeta/pages/language_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Profile Page'),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        shadowColor: Colors.black,
        elevation: 4,
        foregroundColor: Colors.white,
        titleTextStyle: FontHelper.myFont(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: FontHelper.myFont(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryTextColor),
            ),
            SizedBox(height: 16.h),
            ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LanguagePage();
                  }));
                },
                tileColor: Colors.white,
                leading: Icon(
                  Iconsax.global,
                  color: AppColors.primaryTextColor,
                ),
                title: Text(
                  'Language',
                  style: FontHelper.myFont(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryTextColor),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.secondaryTextColor,
                ))
          ],
        ),
      ),
    );
  }
}
