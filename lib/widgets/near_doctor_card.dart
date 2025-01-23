import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';

class NearDoctorCard extends StatelessWidget {
  const NearDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1.r,
              blurRadius: 10.r,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white.withOpacity(1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/doctorImage2.png',
                    height: 48.h,
                    width: 48.w,
                  ),
                  // SvgPicture.asset('assets/images/doctorImage2.svg',
                  //     height: 48.h, width: 48.w),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Joseph Brostito',
                        style: FontHelper.myFont(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryTextColor),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Dental Specialist',
                        style: FontHelper.myFont(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryTextColor),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Iconsax.location,
                        size: 16.sp,
                        color: AppColors.secondaryTextColor3,
                      ),
                      SizedBox(width: 2.w),
                      Text('1.2 KM',
                          style: FontHelper.myFont(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondaryTextColor3)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 12.h),
              Divider(color: Colors.grey.shade200),
              SizedBox(height: 12.h),
              Row(
                children: [
                  buildAppointmentDateRow(context,
                      icon: CupertinoIcons.star_lefthalf_fill,
                      title: '4,8 (120 Reviews)',
                      color: AppColors.myOrange),
                  SizedBox(width: 30.w),
                  buildAppointmentDateRow(context,
                      icon: Iconsax.clock,
                      title: 'Open at 17.00',
                      color: AppColors.primaryColor),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildAppointmentDateRow(BuildContext context,
    {required String title, required IconData icon, Color? color}) {
  return Row(
    children: [
      // Icon(icon, color: AppColors.primaryTextColor2, size: 17.sp,),
      Icon(
        icon,
        color: color,
        size: 17.sp,
      ),
      SizedBox(width: 8.w),
      Text(
        title,
        style: FontHelper.myFont(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            // color: AppColors.primaryTextColor2),
            color: color!),
      ),
    ],
  );
}
