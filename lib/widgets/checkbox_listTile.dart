import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxListTile extends StatelessWidget {
  String text;
  bool value;
  ValueChanged<bool?>? onChanged;
  CheckBoxListTile({required this.text,required this.onChanged,required this.value});

  @override
  Widget build(BuildContext context) {
    return  CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontSize: 16.sp),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: value,
        onChanged: onChanged);
  }
}
