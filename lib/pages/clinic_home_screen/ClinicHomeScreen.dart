import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/patients_layout/patients_layout.dart';
import '../../configurations/themes.dart';
import '../../widgets/arrowBack.dart';
import '../Items&processes_Layout/Items&processes_Layout.dart';

class ClinicHomeScreen extends StatelessWidget {
  static const String routeName = '/clinicHome';

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Clinic Name'),
    leading: IconButton(onPressed: (){
    scaffoldKey.currentState?.openDrawer();
    },
      icon: ImageIcon(AssetImage('assets/drawerIcon.png')),),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height * 0.023,vertical: size.height * 0.023),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: MyTheme.purple,
              ),
              SizedBox(height: size.height * 0.04,),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){
                      Get.toNamed(PatientsLayout.routeName);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                      child: Container(
                        height: size.height * 0.18,
                        width: size.width * 0.42,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: MyTheme.lightBlue,
                            borderRadius: BorderRadius.circular(20).w,
                            border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                        ),
                        child: Text(
                          'Patients',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                  ),
                 Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                      child: Container(
                        height: size.height * 0.18,
                        width: size.width * 0.42,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: MyTheme.lightBlue,
                            borderRadius: BorderRadius.circular(20).w,
                            border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                        ),
                        child: Text(
                          'Owners',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                      ),
                      child: Text(
                        'Drugs',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    ),
                  ),
                 Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){
                        Get.toNamed(ItemsAndProcessesLayout.routeName);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
                      ),
                      child: Text(
                        'Items & Processes',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    ),
                  ),
                ],
                    ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                      ),
                      child: Text(
                        'Inventory',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(20).w,
                    onTap: (){

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20).w
                      ),
                      elevation: 4,
                      color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                      ),
                      child: Text(
                        'prescription',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.sp
                        ),
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
