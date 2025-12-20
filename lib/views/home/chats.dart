import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_image.dart';
import '../../core/components/app_drawer.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final list = [
    TextData(name: 'About Work', data: '10/12/2021'),
    TextData(name: 'About My Family', data: '10/12/2021'),
    TextData(name: 'My self', data: '10/12/2021'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),

      appBar: AppBar(title: Text('Chats')),
      body: ListView.separated(
        itemBuilder: (context, index) => _Item(list: list[index]),
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemCount:list.length,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final TextData list;

  const _Item({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(),
                color: Theme.of(context).primaryColor.withValues(alpha: 0.15),
                borderRadius: BorderRadiusGeometry.all(Radius.circular(9.r)),
              ),
              height: 52.h,
              width: 353.w,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [Text(list.name), Spacer(), Text(list.data)],
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: AppImage(path: 'delete.svg'),
          ),
        ],
      ),
    );
  }
}

class TextData {
  final String name, data;

  TextData({required this.name, required this.data});
}
