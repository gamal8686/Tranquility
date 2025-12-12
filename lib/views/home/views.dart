import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/views/home/chats.dart';
import 'package:tranquility/views/home/quotes.dart';

import '../../core/components/app_image.dart';
import 'profile.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  int currentIndex = 0;
  List page = [ChatsPage(), QuotesPage(),EditProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: AppImage(path: 'chat_button.svg'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).primaryColor.withValues(alpha: 0.7),
        selectedIconTheme: IconThemeData(color: Colors.white),
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            activeIcon: AppImage(path: 'chat.svg', color: Colors.white),

            icon: AppImage(
              path: 'chat.svg',


          ),label: 'Chats',),
          BottomNavigationBarItem(
            activeIcon: AppImage(path: 'quotes.svg', color: Colors.white),
            icon: AppImage(path: 'quotes.svg'),
            label: 'Quotes',
          ),
          BottomNavigationBarItem(
            activeIcon: AppImage(path: 'profile.svg', color: Colors.white),
            icon: AppImage(path: 'profile.svg'),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: page[currentIndex],
    );
  }
}
