import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/logic/goto.dart' show goTo;
import 'on_boarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => goTo(OnBoardingView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInDownBig(
          child: CircleAvatar(
            maxRadius: 150.r,
            backgroundColor: Color(0xff284243).withValues(alpha: 0.20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Tranquility',
                  style: TextStyle(
                    fontFamily: 'MysteryQuest',
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff284243),
                  ),
                ),
                Text(
                  'Together Towards Tranquility',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff284243),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
