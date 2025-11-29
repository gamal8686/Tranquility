import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tranquility/core/components/app_image.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppImage(path: 'on_boarding1.png'),
          Text(
            'Feel Free',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
          Text(
            "because I'm the friendly chatbot here to assist you with anything you need.",
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('skip')),
              FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
                child: ClipOval(

                    child: AppImage(path: 'arrow_right.svg')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
