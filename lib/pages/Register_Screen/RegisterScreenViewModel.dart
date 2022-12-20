
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:vets_club/configurations/alert_dialog.dart';

import 'RegisterScreenService.dart';

class RegisterProvider extends ChangeNotifier{

  createAccount(BuildContext context,{required String name,
    required String email,
    required String password,
    required String phone})async{
    showLoading(context,'Loading....',isCancelable: false);
    var auth = await createAccountDoc(
        name: name,
        email:email,
        password:password,
        phone: phone,);
    if(auth.stat?.regestersuccess == true){
      hideLoading(context);

    }
    else{
      hideLoading(context);
      showMessage(context, dialogType: DialogType.error, desc: auth.message??'',btnOkOnPress: (){

      });
    }
    notifyListeners();
  }
}
