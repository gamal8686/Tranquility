import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppDropdown extends StatefulWidget {
  const AppDropdown({super.key});

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  final list = [10, 20, 30];
  late int selectedCountryCode;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Padding(
        padding: EdgeInsetsDirectional.only(end: 10.w),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xff284243).withValues(alpha: 0.20),
            border: Border.all(),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: DropdownButton<int>(
            isExpanded: true,
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 4.w),
              child: AppImage(path: 'arrow_down.svg'),
            ),

            padding: EdgeInsets.symmetric(horizontal: 16.w),
            value: selectedCountryCode,
            items: list
                .map((e) => DropdownMenuItem(value: e, child: Text('$e')))
                .toList(),
            onChanged: (value) {
              selectedCountryCode = value!;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
