import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../configurations/themes.dart';

class FloatingActionBtn extends StatelessWidget {
  VoidCallback? onPressed;
  FloatingActionBtn({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.075,
      width: size.width * 0.17,
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30).w,
            side: BorderSide(color: MyTheme.purple)
        ),
        backgroundColor: MyTheme.purple,
        child: Icon(Icons.add,size: 32,),
      ),
    );
  }
}
