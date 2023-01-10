import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/add_item_process_screen/add_item_process_screen.dart';

import '../Items_Screen/ItemsScreen.dart';
import '../Processes_Screen/ProcessesScreen.dart';

class ItemsAndProcessesLayout extends StatefulWidget {
  static const String routeName = '/ItemsLayout';

  @override
  State<ItemsAndProcessesLayout> createState() => _ItemsAndProcessesLayoutState();
}

class _ItemsAndProcessesLayoutState extends State<ItemsAndProcessesLayout> {
  List screens = [ItemsScreen(), ProcessesScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AddItemProcessScreen.routeName);
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: Image.asset(
                  'assets/Items.png',
                  width: size.width * 0.14,
                  color: currentIndex == 0 ? Colors.black : Colors.white,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: size.width * 0.05),
                child: Image.asset(
                  'assets/Processes.png',
                  width: size.width * 0.25,
                  color: currentIndex == 1 ? Colors.black : Colors.white,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
