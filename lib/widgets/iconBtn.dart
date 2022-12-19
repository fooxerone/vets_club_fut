import 'package:flutter/material.dart';

import '../configurations/themes.dart';

class IconBtn extends StatelessWidget {
  VoidCallback? onPressed;
  IconData? icon;
  IconBtn({required this.onPressed,required this.icon,});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
              color: MyTheme.boldBlue
          )
      ),
      elevation: 6,
      child: CircleAvatar(
          backgroundColor: MyTheme.lightBlue,
          child: IconButton(onPressed: onPressed, icon: Icon(icon,color: Colors.black,))),
    );
  }
}
