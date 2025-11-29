import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFormField
    extends StatefulWidget {
  final String? label;
  final bool filled;
  final Color? fillColor;
  final bool suffixIcon;
final String? hint;
  const AppFormField
      ({
    super.key,
   this.label,
    required this.filled,
    this.fillColor,
    this.suffixIcon = true, this.hint,
  });

  @override
  State<AppFormField
  > createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField
> {
  bool isCan = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),

        ),
labelText: widget.label,
        fillColor: widget.fillColor,
        filled: widget.filled,
        hintText:widget.hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
        suffixIcon: widget.suffixIcon
            ? IconButton(
                icon: Icon(isCan ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isCan = !isCan;
                  });
                },
              )
            : null,
      ),
    );
  }
}
