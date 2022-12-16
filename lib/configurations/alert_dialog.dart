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
      descTextStyle: Theme.of(context).textTheme.bodyMedium,
      titleTextStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontSize: 18
      ),
   //   btnOkColor: MyTheme.lightOrange,
      dialogBackgroundColor: MyTheme.lightBlue
  )
    ..show();
}

void showLoading(BuildContext context, String message,
    {bool isCancelable = true}) {
  showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Row(
            children: [
              CircularProgressIndicator(
     //           color: MyTheme.lightOrange,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                message,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                    fontSize: 16
                ),
              )
            ],
          ),
        );
      },
      barrierDismissible: isCancelable);
}

void hideLoading(BuildContext context) {
  Navigator.pop(context);
}