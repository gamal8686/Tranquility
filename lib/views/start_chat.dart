import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';

class StartChatView extends StatelessWidget {
  const StartChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [


          Container(
            height: 400,
            width: 430,
            color: Color(0xff284243).withValues(alpha: 0.15),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                AppImage(
                  path: 'chat_button.svg',
                  height: 130.h,
                  width: 130.w,
                  color: Color(0xff284243),
                ),
                Text(
                  'Hey!',
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff284243),
                    fontFamily: 'Inter',
                  ),
                ),
                Text(
                  'I’am your Personal Assistent',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff284243),
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make New Chat',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff284243),
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                AppInput(label: 'Enter The Title Of Chat'),
                SizedBox(height: 16.h),

                AppButton(onPressed: () {}, text: 'Start Chat', width: 380),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
