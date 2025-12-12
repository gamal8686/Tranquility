import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';

import '../../core/components/app_button.dart';
import '../../core/components/app_input.dart';


class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            AppImage(path: 'forget_password.png', height: 254.h, width: 385.w),
            SizedBox(height: 20.h),
            Text(
              'Create New Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 16.h,),
            Text('create your new password to log in !',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                fontFamily: 'Inter',
              ),),
            SizedBox(height: 20.h),
            AppInput(label: 'Password',isPassword: true,),
            SizedBox(height: 10.h),
            AppInput(label: 'Confirm Password',isPassword: true,),
            SizedBox(height: 10.h),
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
