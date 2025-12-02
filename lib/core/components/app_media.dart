import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppMedia extends StatelessWidget {
  final String image;
  final String text;
  final Color myColor;

  const AppMedia({
    super.key,
    required this.image,
    required this.text,
    required this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40.h,
        width: 325.w,
        color: myColor,
        child: Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(color: Colors.white, height: 51, width: 40),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: AppImage(path: image, height: 24.h, width: 24.w),
                ),
              ],
            ),
            SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
