import 'package:flutter/material.dart';

final goToKey = GlobalKey<NavigatorState>();
Future<dynamic> goTo(Widget page, {bool keepHistory = false, int? seconds}) {
  return Navigator.pushAndRemoveUntil(
    goToKey.currentContext!,
    MaterialPageRoute(builder: (context) => page),
    (route) => keepHistory,
  );
}

