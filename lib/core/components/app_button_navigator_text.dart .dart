import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtonNavigatorText extends StatelessWidget {
  final String text;
  final String textButton;

  const AppButtonNavigatorText({
    super.key,
    required this.text,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            textButton,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
