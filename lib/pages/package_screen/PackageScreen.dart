import 'package:flutter/material.dart';

import '../../configurations/themes.dart';

class PackageScreen extends StatelessWidget {
  static const String routeName = 'package';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 10),
        child: Column(
          children: [
              Container(
                height: 100,
                width: double.infinity,
                color: MyTheme.lightBlue,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('3 months'),
                        SizedBox(height: 8,),

                        Text('dd')
                      ],
                    ),
                    separatorBuilder: (context, index) => VerticalDivider(
                      width: 10,
                      color: Colors.black,
                    ),
                    itemCount: 4),
              )
          ],
        ),
      ),
    );
  }
}
