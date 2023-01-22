import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vets_club/widgets/arrowBack.dart';
import 'package:vets_club/widgets/tabBar.dart';

import '../../configurations/themes.dart';

class OwnersScreen extends StatefulWidget {
  static const String routeName = '/owners';

  @override
  State<OwnersScreen> createState() => _OwnersScreenState();
}

class _OwnersScreenState extends State<OwnersScreen> {

  List<String> tabs = ['All Owners','Out Patients','In Patients','Special Owners','Black List',];
  int currentIndex = 0;
  bool isFav = false;

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
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                separatorBuilder: (context, index) => SizedBox(
                  height: size.height* 0.03,
                ),
                itemBuilder: (context, index) => Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(15).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('data'),
                              SizedBox(
                                height: size.height* 0.015,
                              ),
                              Text('data'),
                              SizedBox(
                                height: size.height* 0.015,
                              ),
                              Text('data'),
                              SizedBox(
                                height: size.height* 0.015,
                              ),
                              Text('data'),
                            ],
                          ),
                          Spacer(),
                          InkWell(
                              onTap: (){

                              },
                              child: Icon(Icons.block_outlined,
                                color: Colors.red,
                              )),
                          SizedBox(width: size.width * 0.015,),
                          InkWell(
                              onTap: (){
                                isFav = !isFav;
                                setState(() {

                                });
                              },
                              child: isFav == false ? Icon(Icons.favorite_border_outlined,
                                color: Colors.black,
                              ):Icon(Icons.favorite,
                                color: Colors.red,
                              )
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),          ]
    ),
        ),
      )
    );
  }
}

