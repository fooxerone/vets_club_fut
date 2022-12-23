import 'package:flutter/material.dart';

import '../../configurations/modal_sheet.dart';
import '../../configurations/themes.dart';

class PackageScreen extends StatefulWidget {
  static const String routeName = 'Package';

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, horizontal: size.height * 0.025),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/vets_club.png')),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text('Vets Club Notes Package'),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    ShowModalBottomSheet(
                        context,
                        'Vets Club Notes Package',
                        ' desdesdesdesdesdesdes'
                            'desdesdesdesdesdes',
                        () {});
                  },
                  child: Card(
                    elevation: 4,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Container(
                        padding: EdgeInsets.all(size.height * 0.027),
                        decoration: BoxDecoration(
                            color: MyTheme.lightBlue,
                            borderRadius: BorderRadiusDirectional.circular(25)),
                        height: size.height * 0.17,
                        width: size.width * 1,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '$index mon.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return VerticalDivider(
                              color: Colors.black,
                              width: size.width * 0.07,
                            );
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text('Vets Club Package'),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    ShowModalBottomSheet(
                        context,
                        'Vets Club Package',
                        'desdesdesdesdesdesdes'
                            'desdesdesdesdesdes',
                        () {});
                  },
                  child: Card(
                    elevation: 4,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Container(
                        padding: EdgeInsets.all(size.height * 0.027),
                        decoration: BoxDecoration(
                            color: MyTheme.lightBlue,
                            borderRadius: BorderRadiusDirectional.circular(25)),
                        height: size.height * 0.17,
                        width: size.width * 1,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '$index mon.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return VerticalDivider(
                              color: Colors.black,
                              width: size.width * 0.07,
                            );
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text('Vets Club Notes & Vets Club Package'),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    ShowModalBottomSheet(
                        context,
                        'Vets Club Notes & Vets Club Package',
                        ' desdesdesdesdesdesdes'
                            'desdesdesdesdesdes',
                        () {});
                  },
                  child: Card(
                    elevation: 4,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Container(
                        padding: EdgeInsets.all(size.height * 0.027),
                        decoration: BoxDecoration(
                            color: MyTheme.lightBlue,
                            borderRadius: BorderRadiusDirectional.circular(25)),
                        height: size.height * 0.17,
                        width: size.width * 1,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '$index mon.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return VerticalDivider(
                              color: Colors.black,
                              width: size.width * 0.07,
                            );
                          },
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
