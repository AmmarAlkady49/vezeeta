import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:veseeta/core/utils/app_colors.dart';

class CategorySections extends StatelessWidget {
  const CategorySections({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildCategorySection(
            title: 'Covid 19', addressSVG: 'assets/images/covid_19.svg'),
        buildCategorySection(
            title: 'Doctor', addressSVG: 'assets/images/profile-add.svg'),
        buildCategorySection(
            title: 'Medicine', addressSVG: 'assets/images/capsuol.svg'),
        buildCategorySection(
            title: 'Hospital', addressSVG: 'assets/images/hospital.svg'),
      ],
    );
  }
}

Widget buildCategorySection({
  required String title,
  required String addressSVG,
}) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(100),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: 72.w,
          height: 72.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(6.0.h),
            child: SvgPicture.asset(addressSVG),
          ),
        ),
      ),
      SizedBox(height: 6.h),
      Text(
        title,
        style: TextStyle(
          fontSize: 15.sp,
          color: AppColors.secondaryTextColor3,
        ),
      ),
    ],
  );
}
