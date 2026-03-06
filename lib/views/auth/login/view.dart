import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_button_navigator_text.dart%20.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';
import 'package:tranquility/core/components/app_media.dart';
import 'package:tranquility/views/auth/login/cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CubitLogin(),
        child: Builder(
          builder: (context) {
            final cubit=BlocProvider.of<CubitLogin>(context);
            return SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: Form(
             key: cubit.myKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),
                    AppImage(path: 'login.png'),
                    SizedBox(height: 24.h),
                    Text(
                      'Welcome To',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      'Tranquility',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 48.sp,
                        fontFamily: 'MysteryQuest',
                      ),
                    ),
                    AppInput(
                        controller: cubit.email,
                        label: 'amramer522@gmail.com'),
                    AppInput(
                        controller: cubit.password,
                        isPassword: true),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forget Password?'),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Container(
                          height: 61.h,
                          width: 56.w,
                          color: Color(0xff284243).withValues(alpha: 0.10),
                          child: AppImage(
                            path: 'finger_print.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: AppButton(onPressed: () {
                            if(cubit.myKey.currentState!.validate()){
                              cubit.sendData();
                            }
                          }, text: 'Log In'),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: AppButtonNavigatorText(
                        textButton: 'Sign up',
                        text: 'Don’t have an account ?',
                      ),
                    ),
                    AppMedia(
                      image: 'google.png',
                      myColor: Color(0xff35B542).withValues(alpha: 0.50),
                      text: 'Login With Google',
                    ),
                    SizedBox(height: 5.h),
                    AppMedia(
                      image: 'facebook.png',
                      text: 'Login With Facebook',
                      myColor: Color(0xff518EF8).withValues(alpha: 0.50),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
