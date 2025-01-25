import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veseeta/generated/l10n.dart';
import 'package:veseeta/home_cubit/home_cubit.dart';
import 'package:veseeta/pages/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  String lang = pref.getString('lang') ?? 'ar';
  runApp(MyApp(lang: lang));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.lang});

  final String lang;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => HomeCubit(),
        child: MaterialApp(
          locale: Locale(lang),
          title: 'Vezeeta',
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
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
