import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/core/utils/font_helper.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Schedule',
            style: FontHelper.myFont(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff0D1B34)),
          ),
        ),
      ],
    );
  }
}
