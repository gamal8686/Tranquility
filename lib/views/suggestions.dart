import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';

class SuggestionsViews extends StatelessWidget {
  const SuggestionsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suggestions')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            AppImage(path: 'suggestions.png', height: 170.h, width: 170.w),
            SizedBox(height: 16.h),

            Text(
              'Tell Us How We Can Help',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 30.h),
            AppInput(label: 'Subject'),
            AppInput(label: 'body', maxLines: 5),
            AppButton(text: 'Send Message', onPressed: () {},width: 382,),
          ],
        ),
      ),
    );
  }
}
