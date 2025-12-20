import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/views/auth/login.dart';
import 'package:tranquility/views/home/profile.dart';
import 'package:tranquility/views/home/views.dart';
import 'package:tranquility/views/start_chat.dart';
import 'package:tranquility/views/suggestions.dart';
import 'core/logic/goto.dart';
import 'core/logic/show_masseg.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final primary = Color(0xff284243);
    final primarySwatch = MaterialColor(primary.value, {
      50: primary.withValues(alpha: .1),
      100: primary.withValues(alpha: .2),
      200: primary.withValues(alpha: .3),
      300: primary.withValues(alpha: .4),
      400: primary.withValues(alpha: .5),
      500: primary,
      600: primary.withValues(alpha: .7),
      700: primary.withValues(alpha: .8),
      800: primary.withValues(alpha: .9),
      900: primary,
    });
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          scaffoldMessengerKey: messengerKey,
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
              fillColor: Color(0xff284243).withValues(alpha: 0.20),

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
              backgroundColor: Colors.transparent,
            ),
          ),
          builder: (context, child) =>
              Directionality(textDirection: TextDirection.ltr, child: child!),
          home: SuggestionsViews(),
        );
      },
    );
  }
}
