import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/generated/l10n.dart';
import 'package:veseeta/widgets/schedule_card_doctor.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List scheduleList = [
      [
        'assets/images/doctorImage3.png',
        'Dr. Bessie Coleman',
        S.of(context).dental_specialist,
      ],
      [
        'assets/images/doctorImage4.png',
        'Dr. Babe Didrikson',
        S.of(context).dental_specialist,
      ],
      [
        'assets/images/doctorImage.png',
        'Dr. Imran Syahir',
        S.of(context).general_doctor,
      ],
      [
        'assets/images/doctorImage2.png',
        'Dr. Joseph Brostito',
        S.of(context).dental_specialist,
      ],
    ];
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.h),
              child: ListView.separated(
                  itemBuilder: (context, index) => ScheduleCardDoctor(
                        imageAddress: scheduleList[index][0],
                        doctorName: scheduleList[index][1],
                        doctorSpecialist: scheduleList[index][2],
                      ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                  itemCount: scheduleList.length),
            ),
          ],
        ),
      ),
    );
  }
}
