import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final double? width;
final void Function() onPressed;


  const AppButton({super.key,required this.text,required  this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      child: FilledButton(

          onPressed:onPressed, child: Text(text,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),)),
    );
  }
}
