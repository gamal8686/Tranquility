import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            AppImage(path: 'forget_password.png', height: 254.h, width: 385.w),
            SizedBox(height: 20.h),
            Text(
              'Forget Your Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 30.h),
            AppInput(label: 'Phone Number'),
            SizedBox(height: 30.h),
            Center(
              child: AppButton(
                onPressed: () {},
                text: 'Forget Password',
                width: 382.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
