import 'package:flutter/material.dart';

import '../Items_Screen/ItemsScreen.dart';
import '../Processes_Screen/ProcessesScreen.dart';

class ItemsLayout extends StatefulWidget {
  static const String routeName = '/ItemsLayout';

  @override
  State<ItemsLayout> createState() => _ItemsLayoutState();
}

class _ItemsLayoutState extends State<ItemsLayout> {
  List screens = [ItemsScreen(), ProcessesScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
