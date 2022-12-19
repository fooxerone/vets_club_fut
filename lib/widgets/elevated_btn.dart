import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';

class ElevatedBtn extends StatelessWidget {
  String title;
  VoidCallback? onPressed;
  ElevatedBtn({required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.normal),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.lightBlue),
          elevation: MaterialStateProperty.all(8),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(color: MyTheme.boldBlue)))),
    );
  }
}
