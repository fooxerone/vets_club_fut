import 'package:flutter/material.dart';

class ArrowBackIcon extends StatelessWidget {
  VoidCallback? onPressed;
  ArrowBackIcon(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: ImageIcon(AssetImage('assets/arrow_back.png')));
  }
}
