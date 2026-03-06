import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/views/auth/change_password/cubit.dart';

import '../../../core/components/app_button.dart';
import '../../../core/components/app_input.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: BlocProvider(
          create: (context) => CubitChangePassword(),
          child: Builder(
            builder: (context) {
              final cubit= BlocProvider.of<CubitChangePassword>(context);
              return Form(
                key:cubit. myKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    AppImage(
                      path: 'forget_password.png',
                      height: 254.h,
                      width: 385.w,
                    ),
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
                    SizedBox(height: 16.h),

                    AppInput(
                      controller: cubit.oldPassword,
                      label: 'Old Password',
                      isPassword: true,
                    ),

                    AppInput(
                      controller: cubit.newPassword,
                      label: 'New Password',
                      isPassword: true,
                    ),

                    AppInput(
                      controller: cubit.confirmNewPassword,
                      label: 'Confirm New Password',
                      isPassword: true,
                    ),
                    SizedBox(height: 30.h),

                    Center(
                      child: AppButton(
                        onPressed: () {
                          if (cubit.myKey.currentState!.validate()) {
                            cubit.sendData();
                          }
                        },
                        text: 'Change Password',
                        width: 382.w,
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
