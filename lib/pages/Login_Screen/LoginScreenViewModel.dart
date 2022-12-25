import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreenService.dart';
import 'package:vets_club/pages/info_screen/information_screen.dart';

import '../../configurations/alert_dialog.dart';

class LoginProvider extends ChangeNotifier{

  loginAccount(BuildContext context,{
    required String email,
    required String password})async{
    showLoading(context,isCancelable: false);
    var auth = await loginAccountDoc(
      email:email,
      password:password,
    );
    hideLoading(context);
    if(auth.stat?.loginsuccess == true){
        Get.toNamed(InfoScreen.routeName);
    }
    else{
      showMessage(context, dialogType: DialogType.error, desc: auth.message??'',btnOkOnPress: (){
      });
    }
    notifyListeners();
  }

}
