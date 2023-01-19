import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/all_owners_screen/all_owners_screen.dart';
import 'package:vets_club/pages/in_owners_screen/in_owners_screen.dart';
import 'package:vets_club/pages/out_owners_screen/out_owners_screen.dart';
import 'package:vets_club/widgets/arrowBack.dart';
import 'package:vets_club/widgets/tabBar.dart';

class OwnersLayout extends StatefulWidget {
  static const String routeName = '/owners';

  @override
  State<OwnersLayout> createState() => _OwnersLayoutState();
}

class _OwnersLayoutState extends State<OwnersLayout> {

  List<String> tabs = ['All Owners','Out Patients','In Patients','Special Owners','Black List',];
  List<Widget> screens = [AllOwnersScreen(),OutOwnersScreen(),InOwnersScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(() { Get.back();}),
        title: Text(tabs[currentIndex]),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
          child: Column(
            children: [
            TabBarWidget(list: tabs,onTap:(index){
              currentIndex = index;
             setState(() {

             });
            },
            currentIndex: currentIndex,
            ),
              screens[currentIndex],
          ]
    ),
        ),
      )
    );
  }
}

