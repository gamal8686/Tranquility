import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_image.dart';

import '../../core/components/app_otv.dart';


class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            AppImage(path: 'otp.png', height: 220.h, width: 382.w),
            SizedBox(height: 24.h),
            Text(
              'Verification',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Please enter the code sent on your\n phone.',
              textAlign: TextAlign.start,
              style: TextStyle(color: Color(0xff284243)),
            ),
            SizedBox(height: 24.h),
            AppOtp(),
            SizedBox(height: 60.h),
            AppButton(onPressed: () {}, text: 'Verify',width: 385.w,),
          ],
        ),
      ),
    );
  }
}
