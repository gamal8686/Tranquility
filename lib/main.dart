import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/splash.dart';

import 'auth/login.dart';
import 'core/logic/goto.dart';
import 'core/logic/show_masseg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final primary = Color(0xff284243);
    final primarySwatch = MaterialColor(primary.value, {
      50: primary.withOpacity(.1),
      100: primary.withOpacity(.2),
      200: primary.withOpacity(.3),
      300: primary.withOpacity(.4),
      400: primary.withOpacity(.5),
      500: primary,
      600: primary.withOpacity(.7),
      700: primary.withOpacity(.8),
      800: primary.withOpacity(.9),
      900: primary,
    });
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          scaffoldMessengerKey:messengerKey,
          navigatorKey: navKey,
          debugShowCheckedModeBanner: false,
          title: 'Tranquility',
          theme: ThemeData(
              textButtonTheme: TextButtonThemeData(

                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff284243),
                  textStyle: TextStyle(

                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),

              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color(0xff284243).withValues(alpha: 0.29),


                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              filledButtonTheme: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  backgroundColor: Color(0xff265355),
                  fixedSize: Size.fromHeight(50.h),
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch),
              fontFamily: 'Inter',
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.transparent)
          ),
          builder: (context, child) =>
              Directionality(textDirection: TextDirection.ltr, child: child!),
          home:  LoginView(),
        );
      },
    );
  }
}

