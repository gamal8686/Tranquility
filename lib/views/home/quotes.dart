import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:clipboard/clipboard.dart';

import '../../core/components/app_drawer.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CopyModel> list = [
      CopyModel(
        text: '"The only way to do great work is to love what you do "',
        titel: 'Steve Jobsa',
      ),
      CopyModel(text: ' what you do', titel: ' Jobsa'),
    ];
    int currentIndex = 0;
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text('Quotes')),
      body: Stack(
        children: [
          AppImage(path: 'quotes_image.png', width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff000000).withValues(alpha: 0.25),
                  border: BoxBorder.all(),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(16.r),
                  ),
                ),
                height: 358.h,
                width: 403.w,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 120.h),
                AppImage(
                  path: 'quotes.svg',
                  height: 50.h,
                  width: 50.w,
                  color: Color(0xff000000),
                ),
                SizedBox(height: 16.h),
                Text(
                  list[currentIndex].text,
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    list[currentIndex].titel,
                    style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    FlutterClipboard.copy(
                      list[currentIndex].text,
                    ).then((value) => list[currentIndex]);
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('This Copy is Completed')),
                      );
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Copy'),
                      IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CopyModel {
  final String text;
  final String titel;

  CopyModel({required this.text, required this.titel});
}
