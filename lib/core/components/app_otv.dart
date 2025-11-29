import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppOtp extends StatelessWidget {
  const AppOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.w, right: 50.w),
      child: PinCodeTextField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,


        appContext: context,

        length: 4,

        pinTheme: PinTheme(
            selectedColor: Colors.white,
           activeColor: Colors.white,
          inactiveFillColor: Theme.of(context).primaryColor,

       inactiveColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8.r),

          fieldWidth: 45.w,
          fieldHeight: 45.h,
          shape: PinCodeFieldShape.box,
          fieldOuterPadding: EdgeInsets.all(5.r)
        ),
      ),
    );
  }
}