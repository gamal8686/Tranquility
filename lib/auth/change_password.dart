import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';

import '../core/components/app_button.dart';
import '../core/components/app_input.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            AppImage(path: 'forget_password.png', height: 254.h, width: 385.w),
            SizedBox(height: 20.h),
            Text(
              'Change Your Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 16.h,),

            AppInput(label: 'Old Password',isPassword: true,),

            AppInput(label: 'New Password',isPassword: true,),

            AppInput(label: 'Confirm New Password',isPassword: true,),
            SizedBox(height: 30.h,),

            Center(
              child: AppButton(
                onPressed: () {},
                text: 'Change Password',
                width: 382.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
