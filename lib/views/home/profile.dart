import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_dropDown.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';

import '../../core/components/app_drawer.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late String selectedCountryCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),

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
            AppInput(label: 'Sara'),
            AppInput(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: AppInput()),
                SizedBox(width: 5.w),
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                    child: AppDropdown(
                      onSelectedCountryCode: (value) {
                        selectedCountryCode = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),

            AppButton(
              onPressed: () {
                print(selectedCountryCode);
              },
              text: 'Save',
              width: 380.w,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Color(0xff000000),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: AppImage(path: 'edit_info.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
