import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_button_navigator_text.dart%20.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';
import 'dart:io';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  XFile? selectImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff000000).withValues(alpha: 0.10),
                  minRadius: 57,
                  child: selectImage != null
                      ? Image.file(
                        File(selectImage!.path),
                        fit: BoxFit.cover,

                      )
                      : AppImage(path: 'empty_image.svg'),
                ),
                Positioned(
                  bottom: 0,
                  left: 180,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        builder: (context) {
                          return SizedBox(
                            height: 250,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20.h),

                                  GestureDetector(
                                    onTap: () async {
                                      XFile? responsive = await ImagePicker()
                                          .pickImage(
                                            source: ImageSource.camera,
                                          );
                                      if (responsive != null) {
                                        selectImage = responsive;
                                        setState(() {});
                                      }

                                      Navigator.pop(context, selectImage);
                                    },
                                    child: AppImage(
                                      path: 'camara.svg',
                                      height: 90.h,
                                      width: 90.w,
                                    ),
                                  ),
                                  SizedBox(width: 50.w),

                                  GestureDetector(
                                    onTap: () async {
                                      XFile? responsive = await ImagePicker()
                                          .pickImage(
                                            source: ImageSource.gallery,
                                          );
                                      if (responsive != null) {
                                        selectImage = responsive;
                                        setState(() {});
                                      }

                                      Navigator.pop(context, selectImage);
                                    },
                                    child: AppImage(
                                      path: 'gallery.svg',
                                      height: 90.h,
                                      width: 90.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        context: context,
                      );
                    },
                    child: CircleAvatar(
                      minRadius: 25,

                      backgroundColor: Theme.of(context).primaryColor,
                      child: AppImage(path: 'plus.svg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            AppInput(label: 'Username'),
            AppInput(label: 'Phone Number'),
            AppInput(label: 'Age'),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Gender'),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: AppImage(path: 'arrow_down.svg'),
                ),
              ),
            ),
            SizedBox(height: 15.h),

            AppInput(label: 'Password', isPassword: true),
            SizedBox(height: 25),
            Text(
              'Confirm password ',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 45),

            AppButton(text: 'Sign Up', onPressed: () {}, width: 380),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: AppButtonNavigatorText(
                text: 'Already have an account ?',
                textButton: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
