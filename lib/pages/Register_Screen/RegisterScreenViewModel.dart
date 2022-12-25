
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vets_club/configurations/alert_dialog.dart';

import '../info_screen/information_screen.dart';
import 'RegisterScreenService.dart';

class RegisterProvider extends ChangeNotifier{

  createAccount(BuildContext context,{required String name,
    required String email,
    required String password,
    required String phone})async{
    showLoading(context,isCancelable: false);
    var auth = await createAccountDoc(
        name: name,
        email:email,
        password:password,
        phone: phone,
    );
    hideLoading(context);
    if(auth.stat?.regestersuccess == true){
      Get.toNamed(InfoScreen.routeName);
    }
    else{
      showMessage(context, dialogType: DialogType.error, desc: auth.message??'',btnOkOnPress: (){

      });
    }
    notifyListeners();
  }
}
