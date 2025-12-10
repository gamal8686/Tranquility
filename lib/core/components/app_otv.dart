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
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: PinCodeTextField(
        useExternalAutoFillGroup: true,
        enableActiveFill: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        appContext: context,
        length: 4,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldWidth: 55.5.w,
          fieldHeight: 50.h,
          borderRadius: BorderRadius.circular(8.r),

          activeFillColor: Color(0xffACACAC).withValues(alpha: 0.1),
          selectedFillColor: Color(0xffACACAC).withValues(alpha: 0.1),
          inactiveFillColor: Color(0xffACACAC).withValues(alpha: 0.1),

          activeColor: Color(0xff284243).withValues(alpha: 0.29),
          selectedColor: Color(0xff284243).withValues(alpha: 0.29),
          inactiveColor: Color(0xff284243).withValues(alpha: 0.29),

          fieldOuterPadding: EdgeInsets.all(5.r),
        ),

        onChanged: (value) {},
      ),
    );
  }
}
