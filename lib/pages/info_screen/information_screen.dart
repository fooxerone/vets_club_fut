import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';
import '../../widgets/elevated_btn.dart';



class InfoScreen extends StatefulWidget {
  static const String routeName = '/info';

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isOpen = false;
  direct() async {
  Directory directory = await getApplicationSupportDirectory();
  print(directory.path);
}
  @override
  void initState() {
    direct();
    permission();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.007),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/vets_club.png',
                  width: size.width * 0.5,
                ),
              ),

              Text('Welcome To Vets Club Notes',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),

              SizedBox(height: size.height * 0.03,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.height * 0.025),
                child: Text(
                      '- The best app for vets, vet clinics & vet hospitals.\n\n'
                      '- You can now easy arrange your vet work through a lot of facilities that been introduced to you in this app.\n\n'
                      '- You can record all information about veterinary cases quickly, effectively and in a very easy way.\n\n'
                      '- Facilitate teamwork and communication moment by moment through the information update synchronization service, which will facilitate the process of effective participation between the work team\n\n'
                      '- Recording and organizing all information about cases including ( inpatients, outpatients, medications, treatments and daily notes ).\n\n'
                      '- You can add many items and processes that you practice daily, in addition to some information about the price and stock of the item or process, so that it can be easily tracked and calculated.\n\n'
                      '- You can easily follow the inventory of each drug used and calculate the full cost of treatment for each case.\n\n'
                      '- You can easily control and contact the clients of the clinic.\n\n'
                      '- You can control the promotion of your clinic and receive customer requests by subscribing to the VETS CLUB promotion service.\n\n',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                      fontSize: 15.sp,
                      height: 1.25.h
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: size.height * 0.01,),
              ElevatedBtn(title: 'Next'.toUpperCase(), onPressed: ()async{

                Get.offNamed(LoginScreen.routeName);
               isOpen = true;
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('onBoard', isOpen);
                setState(() {

                });
              }),
            ],
          ),
        ),
      ),
    );
  }
  permission()async{
    Directory directory = await getApplicationSupportDirectory();
    if (Platform.isAndroid) {
      await Permission.manageExternalStorage.request();
      var status = await Permission.manageExternalStorage.status;
      if (status.isDenied) {
        return;
      }
      if (await Permission.manageExternalStorage.isPermanentlyDenied) {
            await openAppSettings();
      }
      if (status.isGranted) {
        return[
        Directory('/storage/emulated/0/Vets_Club_Notes').createSync(),
        Directory('/storage/emulated/0/Vets_Club_Notes/Patients').createSync(),
        Directory('/storage/emulated/0/Vets_Club_Notes/Prescriptions').createSync(),
        ];
      }
      if (Platform.isIOS){
        await Permission.manageExternalStorage.request();
        var isoStatus = await Permission.manageExternalStorage.status;
        if(isoStatus.isDenied){
          return;
        }
        if (await Permission.manageExternalStorage.isPermanentlyDenied){
          await openAppSettings();
        }
        if(status.isGranted){
          return[
            Directory('${directory.path}/Vets_Club_Notes').createSync(),
            Directory('${directory.path}/Vets_Club_Notes/Patients').createSync(),
            Directory('${directory.path}/Vets_Club_Notes/Prescriptions').createSync(),
          ];
        }
      }


    }
  }
}
