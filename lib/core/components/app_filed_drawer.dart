import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppFiledDrawer extends StatefulWidget {
  final String image, text;
  final Color? color;
  final bool? isKey;

  const AppFiledDrawer({
    super.key,
    required this.image,
    required this.text,
    this.color,
    this.isKey = false,
  });

  @override
  State<AppFiledDrawer> createState() => _AppFiledDrawerState();
}

class _AppFiledDrawerState extends State<AppFiledDrawer> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            color: Color(0xff284243).withValues(alpha: 0.10),
          ),
          height: 40.h,
          width: 312.w,
          child: Row(
            children: [
              SizedBox(width: 18.w),

              AppImage(path: widget.image, height: 20.h, width: 20.w),
              SizedBox(width: 10.w),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  color: widget.color,
                ),
              ),
              if (widget.isKey == true)
                Padding(
                  padding: REdgeInsets.only(left: 6.w),
                  child: Switch(
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
