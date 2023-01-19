import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

saveImage()async{
  if(Platform.isAndroid){
    await Permission.storage.request();
    var statusStorage = await Permission.storage.status;
    if (statusStorage.isDenied) {
      return;
    }
    if (await Permission.storage.isPermanentlyDenied) {
      await openAppSettings();
    }
    if (statusStorage.isGranted) {
      return;
    }
  }
  if(Platform.isIOS){
    await Permission.storage.request();
    var statusStorage = await Permission.storage.status;
    if (statusStorage.isDenied) {
      return;
    }
    if (await Permission.storage.isPermanentlyDenied) {
      await openAppSettings();
    }
    if (statusStorage.isGranted) {
      return;
    }
  }
}