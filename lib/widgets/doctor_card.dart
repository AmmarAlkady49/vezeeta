import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 1.r,
                blurRadius: 10.r,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/doctorImage.png',
                      height: 48.h,
                      width: 48.w,
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Imran Syahir',
                          style: FontHelper.myFont(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'General Doctor',
                          style: FontHelper.myFont(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryTextColor2),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 36.sp,
                    )
                  ],
                ),
                SizedBox(height: 12.h),
                Divider(
                  color: Colors.white.withOpacity(0.2),
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    buildAppointmentDateRow(context,
                        icon: Iconsax.calendar_2, title: 'Sunday, 12 June'),
                    SizedBox(width: 30.w),
                    buildAppointmentDateRow(context,
                        icon: Iconsax.clock, title: '11:00 - 12:00 AM'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildAppointmentDateRow(BuildContext context,
    {required String title, required IconData icon}) {
  return Row(
    children: [
      Icon(icon, color: AppColors.primaryTextColor2, size: 17.sp),
      SizedBox(width: 8.w),
      Text(
        title,
        style: FontHelper.myFont(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryTextColor2),
      ),
    ],
  );
}
