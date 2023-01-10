import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/add_drug_screen/add_drug_screen.dart';
import 'package:vets_club/pages/all_drugs_screen/all_drugs_screen.dart';
import 'package:vets_club/pages/antibiotics_screen/antibiotics_screen.dart';

import 'package:vets_club/widgets/floating_btn.dart';
import '../../widgets/arrowBack.dart';
import '../../widgets/tabBar.dart';

class DrugsLayout extends StatefulWidget {
    static const String routeName = '/drugs';
  @override
  State<DrugsLayout> createState() => _DrugsLayoutState();
}

class _DrugsLayoutState extends State<DrugsLayout> {
  List<String> tabs = ['all drugs','antibiotics','anti-protozoa','parasitic-ides',];
  List<Widget> screens = [AllDrugsScreen(),AntibioticsScreen()];
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
        ),
      floatingActionButton: FloatingActionBtn(onPressed: (){Get.toNamed(AddDrugScreen.routeName);})
    );
  }
}
