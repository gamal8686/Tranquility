import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_dropDown.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Icon(Icons.home),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },child: AppImage(path: 'chat_button.svg'),),
      appBar: AppBar(title: Text('edit profile')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ClipOval(
                      child: AppImage(
                        path:
                            'https://tse4.mm.bing.net/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3',
                        height: 160.h,
                        width: 160.w,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 25.r,
                        child: AppImage(path: 'plus.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10.h),
            AppInput(),
            AppInput(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: AppInput()),
                SizedBox(width: 5.w),
                Expanded(
                  child: SizedBox(height: 50.h, child: AppDropdown()),
                ),
              ],
            ),
            SizedBox(height: 10.h),

            AppButton(onPressed: () {}, text: 'Save', width: 380.w),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Color(0xff000000),
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {

                },icon: AppImage(path: 'edit_info.svg'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
