import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



final messengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> showMessage(String text) async {
 await FlutterClipboard.copy(text);

  messengerKey.currentState?.showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(fontFamily: 'Tajawal', color: Colors.red),
      ),
      backgroundColor:Theme.of(messengerKey.currentContext!).primaryColor, // لون خلفية الـ SnackBar
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16.w),
      elevation: 0,
    ),
  );
}