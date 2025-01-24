import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/core/config/config.dart';
import 'package:veseeta/home_cubit/home_cubit.dart';
import 'package:veseeta/pages/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.loadLanguage('en');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) {
          final cubit = HomeCubit();
          cubit.changeLanguage('ar');
          return cubit;
        },
        child: MaterialApp(
          title: 'Vezeeta',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
            useMaterial3: true,
          ),
          home: const BottomNavBar(),
        ),
      ),
    );
  }
}
