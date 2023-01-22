import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/add_drug_screen/add_drug_screen.dart';
import 'package:vets_club/widgets/floating_btn.dart';
import '../../configurations/themes.dart';
import '../../widgets/arrowBack.dart';
import '../../widgets/tabBar.dart';


class DrugsScreen extends StatefulWidget {
  static const String routeName = '/drugs';
  @override
  State<DrugsScreen> createState() => _DrugsScreenState();
}

class _DrugsScreenState extends State<DrugsScreen> {
  List<String> tabs = [
    'all drugs',
    'antibiotics',
    'anti-inflammatory',
    'anti-protozoa',
    'parasitic-ides',
    'other drugs'
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: ArrowBackIcon(() {
            Get.back();
          }),
          title: Text(tabs[currentIndex]),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
            child: Column(children: [
              TabBarWidget(
                list: tabs,
                onTap: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                currentIndex: currentIndex,
              ),
              ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: size.height * 0.02,vertical: size.height * 0.03),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                separatorBuilder: (context, index) => SizedBox(
                  height: size.height * 0.03,
                ),
                itemBuilder: (context, index) => Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(15).w,
                          border: Border.fromBorderSide(
                              BorderSide(color: MyTheme.boldBlue))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('data'),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              Text('data'),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              Text('data'),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              Text('data'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionBtn(onPressed: () {
          Get.toNamed(AddDrugScreen.routeName);
        }));
  }
}
