import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';
import 'package:veseeta/widgets/category_sections.dart';
import 'package:veseeta/widgets/doctor_card.dart';
import 'package:veseeta/widgets/my_app_bar.dart';
import 'package:veseeta/widgets/my_search_text_form_field.dart';
import 'package:veseeta/widgets/near_doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              SizedBox(height: 32.h),
              SizedBox(width: 327.w, height: 155.h, child: DoctorCard()),
              SizedBox(height: 20.h),
              MySearchTextFormField(
                controller: TextEditingController(),
              ),
              SizedBox(height: 24.h),
              CategorySections(),
              SizedBox(height: 24.h),
              Text(
                'Nearby Doctors',
                style: FontHelper.myFont(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor),
              ),
              SizedBox(height: 16.h),
              NearDoctorCard(),
            ],
          ),
        ),
      ),
    );
  }
}
