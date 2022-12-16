import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';

class ElevatedBtn extends StatelessWidget {
  String title;
  VoidCallback? onPressed;
  ElevatedBtn({required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 32, fontWeight: FontWeight.normal),
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
