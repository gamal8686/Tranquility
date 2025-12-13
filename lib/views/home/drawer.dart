import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';

import '../../core/components/app_filed_drower.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            height: 250.h,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 40.h),
                ClipOval(
                  child: AppImage(
                    height: 140.h,
                    width: 140.w,
                    path:
                        'https://tse4.mm.bing.net/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3',
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Sara',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6.h),

                Text(
                  '01027545631',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          AppFiledDrawer(image: 'about_us.svg',text: 'About Us',),
          AppFiledDrawer(image: 'rate_our_app.svg',text: 'Rate Our App',),
          AppFiledDrawer(image: 'suggestions.svg',text: 'Suggestions',),
          AppFiledDrawer(image: 'finger_print.svg',text: 'Enable Easy Login',isKey: true,),
          AppFiledDrawer(image: 'logout.svg',text: 'Logout',color: Color(0xffF60000),),
        ],
      ),
    );
  }
}