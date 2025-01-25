import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/generated/l10n.dart';
import 'package:veseeta/pages/home_page.dart';
import 'package:veseeta/pages/profile_page.dart';
import 'package:veseeta/pages/schedule_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List _pageOptions = [
    HomePage(),
    SchedulePage(),
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      backgroundColor: Colors.white,
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: Container(
        // height: 110.h,
        // width: 375.w,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.r,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.h),
            child: GNav(
              gap: 12.w,
              activeColor: AppColors.fadedPrimaryColor,
              iconSize: 26.sp,
              textStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
              duration: Duration(milliseconds: 400),
              tabBorderRadius: 12.r,
              tabBackgroundColor: AppColors.fadedPrimaryColor.withOpacity(0.09),
              color: Colors.black,
              tabs: [
                GButton(
                  icon: _selectedIndex == 0 ? Iconsax.home_15 : Iconsax.home,
                  iconColor: _selectedIndex != 0
                      ? AppColors.secondaryTextColor3
                      : null,
                  text: S.of(context).home,
                ),
                GButton(
                  icon: _selectedIndex == 1
                      ? Iconsax.calendar_25
                      : Iconsax.calendar_2,
                  iconColor: _selectedIndex != 1
                      ? AppColors.secondaryTextColor3
                      : null,
                  text: S.of(context).schedule,
                ),
                GButton(
                  icon:
                      _selectedIndex == 2 ? Iconsax.message5 : Iconsax.message,
                  iconColor: _selectedIndex != 2
                      ? AppColors.secondaryTextColor3
                      : null,
                  text: S.of(context).chat,
                ),
                GButton(
                  icon: _selectedIndex == 3
                      ? CupertinoIcons.person_fill
                      : CupertinoIcons.person,
                  iconColor: _selectedIndex != 3
                      ? AppColors.secondaryTextColor3
                      : null,
                  text: S.of(context).profile,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
