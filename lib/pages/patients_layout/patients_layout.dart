import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/addPatient_screen/addPatient_screen.dart';
import 'package:vets_club/pages/inPatients_screen/inPatients_screen.dart';
import 'package:vets_club/pages/outPatients_screen/outPatients_screen.dart';

class PatientsLayout extends StatefulWidget {
  static const String routeName = '/patLayout';

  @override
  State<PatientsLayout> createState() => _PatientsLayoutState();
}

class _PatientsLayoutState extends State<PatientsLayout> {
  List screens = [OutPatientsScreen(),InPatientsScreen()];
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(AddPatientScreen.routeName);
        },
        child: Icon(Icons.add,
        size: 30,
        color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex = index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Padding(
              padding: EdgeInsets.only(right: size.width * 0.05),
              child: Image.asset('assets/outPatients.png',
              width: size.width * 0.17,
                color: currentIndex==0? Colors.black:Colors.white,
              ),
            ),
            label: '',),
            BottomNavigationBarItem(icon:Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Image.asset('assets/inPatients.png',
                width: size.width * 0.17,
                color: currentIndex==1? Colors.black:Colors.white,
              ),
            ),
              label: '',),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
