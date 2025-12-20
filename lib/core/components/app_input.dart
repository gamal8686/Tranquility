import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_dropDown.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  final void Function(String)? onSelectedCountryCode;
 final int maxLines;
  final String? path, label;
  final bool dropDown;
  final bool isPassword;

  const AppInput({
    super.key,
    this.path,
    this.dropDown = false,
    this.label,
    this.isPassword = false,
    this.onSelectedCountryCode, this.maxLines=1,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.dropDown)
              AppDropdown(
                onSelectedCountryCode: (value) {
                  if (widget.onSelectedCountryCode != null) {
                    widget.onSelectedCountryCode!(value);
                  }
                },
              ),


            Expanded(
              child: TextFormField(
                maxLines:widget.maxLines ,
                obscureText: widget.isPassword && isHidden ? true : false,
                decoration: InputDecoration(

                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: widget.isPassword
                        ? IconButton(
                            onPressed: () {
                              isHidden = !isHidden;
                              setState(() {});
                            },
                            icon: AppImage(
                              path: isHidden
                                  ? 'visibility_off.svg'
                                  : 'visibility_on.svg',
                            ),
                          )
                        : null,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  labelText: widget.label,
                  filled: true,
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
