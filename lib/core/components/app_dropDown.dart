import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppDropdown extends StatefulWidget {
  final void Function(String) onSelectedCountryCode;

  const AppDropdown({super.key, required this.onSelectedCountryCode});

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  List<ListModel>? list;
 late String selectedCountryCode;



  Future<void> getData() async {
    final rep = await Dio().get('https://growfet.com/api/Countries');
    list = CuntryModel.fromJson({'list': rep.data}).list;
    selectedCountryCode = list!.first.code;
    widget.onSelectedCountryCode?.call(selectedCountryCode);

    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getData();
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
          child: list == null
              ? Center(child: CircularProgressIndicator())
              : DropdownButton<String>(

                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(start: 60.w),
                    child: AppImage(path: 'arrow_down.svg'),
                  ),

                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  value: selectedCountryCode,
                  items: list!
                      .map(
                        (e) => DropdownMenuItem<String>(
                          value: e.code,
                          child: Text(e.code),
                        ),
                      )
                      .toList(),
            onChanged: (String? value) {
             if (value == null) return;
              selectedCountryCode = value;
              widget.onSelectedCountryCode?.call(selectedCountryCode);
              setState(() {});
            },
                ),
        ),
      ),
    );
  }
}

class CuntryModel {
  late final List<ListModel> list;

  CuntryModel.fromJson(Map<String, dynamic> json) {
    list = List.from(
      json['list'] ?? [],
    ).map((e) => ListModel.fromJson(e)).toList();  }
}

class ListModel {
  late final num id;
  late final String code;
  late final String name;

  ListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    code = json['code'] ?? '';
    name = json['name'] ?? '';
  }
}
