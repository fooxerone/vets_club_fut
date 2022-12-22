import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:vets_club/configurations/themes.dart';

showMessage(BuildContext context,
    {required DialogType dialogType,
      required String desc,
      VoidCallback? btnOkOnPress,
    }) {
  AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: dialogType,
      title: 'Vets Club Notes',
      desc: desc,
      btnOkOnPress:btnOkOnPress,
      btnOkText: 'Try Again',
      descTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
        color: Colors.red
      ),
      titleTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
        fontSize: 22
      ),
      btnOkColor: MyTheme.purple,
      dialogBackgroundColor: Color(0xFFE2EFF1)
  )
    ..show();
}

void showLoading(BuildContext context,
    {bool isCancelable = true}) {
  showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          alignment: Alignment.center,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
               color: MyTheme.lightBlue,
              ),
            ],
          ),
        );
      },
      barrierDismissible: isCancelable);
}

void hideLoading(BuildContext context) {
  Navigator.pop(context);
}