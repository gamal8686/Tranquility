import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  final String? path, label;
  final bool dropDown;
  final bool isPassword;

  const AppInput({
    super.key,
    this.path,
    this.dropDown = false,
    this.label,
    this.isPassword = false,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  final list = [10, 20, 30];
  late int selectedCountryCode;
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.w),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.dropDown)
              Padding(
                padding: EdgeInsetsDirectional.only(end: 10.w),
                child: DecoratedBox(

                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).inputDecorationTheme.enabledBorder!.borderSide.color,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: DropdownButton<int>(
                    icon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 4.w),
                      child: AppImage(path: 'DropdownButton.svg'),
                    ),

                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    value: selectedCountryCode,
                    items: list
                        .map(
                          (e) => DropdownMenuItem(value: e, child: Text('$e')),
                        )
                        .toList(),
                    onChanged: (value) {
                      selectedCountryCode = value!;
                      setState(() {});
                    },
                  ),
                ),
              ),

            Expanded(
              child: TextFormField(
                obscureText: widget.isPassword && isHidden ? true : false,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: widget.isPassword
                        ? IconButton(
                            onPressed: () {
                              isHidden = !isHidden;
                              setState(() {});
                            },
                            icon: AppImage(
                              path: isHidden
                                  ? 'visibility.svg'
                                  : 'visibility_off.svg',
                            ),
                          )
                        : null,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  labelText: widget.label,
                  filled: true,
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
