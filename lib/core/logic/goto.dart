import 'dart:async';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final navKey = GlobalKey<NavigatorState>();

goTo(Widget page, {bool canPop = false, int? delayDuration}) {
  void action() {
    Navigator.pushAndRemoveUntil(
      navKey.currentContext!,
      MaterialPageRoute(builder: (context) => page),
      (route) => canPop,
    );
  }

  if (delayDuration != null) {
    Timer(Duration(seconds: delayDuration), () {
      action();
    });
  } else {
    action();
  }
}

Future<void> showMessage(String text, {bool isError = false}) async {
  await FlutterClipboard.copy(text);

  ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(fontFamily: 'Tajawal', color: Colors.red),
      ),
      backgroundColor: isError
          ? Colors.red
          : Theme.of(navKey.currentContext!).primaryColor,

      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16.w),
      elevation: 0,
    ),
  );
}
