import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';
import 'package:veseeta/generated/l10n.dart';

class ScheduleCardDoctor extends StatelessWidget {
  final String imageAddress;
  final String doctorName;
  final String doctorSpecialist;
  const ScheduleCardDoctor(
      {super.key,
      required this.imageAddress,
      required this.doctorName,
      required this.doctorSpecialist});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 225.h,
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
                    imageAddress,
                    height: 48.h,
                    width: 48.w,
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: FontHelper.myFont(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryTextColor),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        doctorSpecialist,
                        style: FontHelper.myFont(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryTextColor),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Divider(color: AppColors.secondaryTextColor.withOpacity(0.3)),
              SizedBox(height: 12.h),
              Row(
                children: [
                  buildAppointmentDateRow(context,
                      icon: Iconsax.calendar_2,
                      title: 'Sunday, 12 June',
                      color: AppColors.secondaryTextColor3),
                  Spacer(),
                  buildAppointmentDateRow(context,
                      icon: Iconsax.clock,
                      title:
                          '11:00 ${S.of(context).AM} - 12:00 ${S.of(context).PM}',
                      color: AppColors.secondaryTextColor3),
                ],
              ),
              SizedBox(height: 12.h),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                  padding:
                      EdgeInsets.symmetric(horizontal: 118.w, vertical: 8.h),
                ),
                child: Text(
                  S.of(context).details,
                  style: FontHelper.myFont(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor),
                ),
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
