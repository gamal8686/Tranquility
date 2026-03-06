import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tranquility/core/components/app_button.dart';
import 'package:tranquility/core/components/app_button_navigator_text.dart%20.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/components/app_input.dart';
import 'dart:io';

import 'package:tranquility/views/auth/register/cubit.dart';
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
      body: BlocProvider(
        create: (context) => CubitRegister(),
        child: Builder(
          builder: (context) {
            final cubit=BlocProvider.of<CubitRegister>(context);
            return SingleChildScrollView(
              padding: EdgeInsets.all(15),
              child: Form(
                key: cubit.myKey,
                child: Column(
                  children: [
                    SizedBox(height: 50.h),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: const Color(0xff000000).withValues(alpha: 0.10),
                          backgroundImage: selectImage != null
                              ? FileImage(File(selectImage!.path))
                              : null,
                          child: selectImage == null
                              ? AppImage(path: 'empty_image.svg')
                              : null,
                        ),

                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                builder: (context) {
                                  return SizedBox(
                                    height: 250.h,
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
                             minRadius: 20.r,
                              backgroundColor: Theme.of(context).primaryColor,
                              child: AppImage(path: 'plus.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    AppInput(
                        controller: cubit.name,
                        label: 'Username'),
                    AppInput(
                        controller: cubit.phone,
                        label: 'Phone Number'),
                    AppInput(
                        controller: cubit.age,
                        label: 'Age'),
                    TextFormField(
                      controller: cubit.gender,
                      decoration: InputDecoration(
                        label: Text('Gender'),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(15),
                          child: AppImage(path: 'arrow_down.svg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    AppInput(
                        controller: cubit.password,
                        label: 'Password', isPassword: true),
                    SizedBox(height: 25.h),
                    Text(
                      'Confirm password ',
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 45.h),
                    AppButton(text: 'Sign Up', onPressed: () {
                      if(cubit.myKey.currentState!.validate()){
                        cubit.sendData();
                      }

                    }, width: 380.w),
                    SizedBox(height: 20.h),
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
        ),
      ),
    );
  }
}
