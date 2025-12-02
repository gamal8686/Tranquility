import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/components/app_image.dart';
import 'package:tranquility/core/logic/goto.dart';

import 'auth/login.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppImage(
              fit: BoxFit.cover,
              path: list[counter].image,

              width: double.infinity,
            ),
            SizedBox(height: 25.h),

            Padding(
              padding: const EdgeInsets.all(19),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      list[counter].text,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    list[counter].desc,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {
                          goTo(LoginView());
                        },
                        child: Text('skip'),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (counter == list.length - 1) {
                              goTo(LoginView());
                            } else {
                              counter++;
                            }
                          });
                        },
                        child: CircleAvatar(
                          minRadius: 30,
                          child: AppImage(path: 'arrow_right.svg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _model {
  final String image, text, desc;

  _model({required this.image, required this.text, required this.desc});
}

final list = [
  _model(
    image: 'on_boarding1.png',
    text: 'Feel Free',
    desc:
        "because I'm the friendly chatbot here to assist you with anything you need.",
  ),
  _model(
    image: 'on_boarding2.png',
    text: 'Ask For Anything',
    desc:
        "I'm your friendly neighborhood chatbot ready to assist you with any questions or concerns.",
  ),
  _model(
    image: 'on_boarding3.png',
    text: 'Your Secert is Save',
    desc: "Our platform prioritizes your privacy and security",
  ),
];
