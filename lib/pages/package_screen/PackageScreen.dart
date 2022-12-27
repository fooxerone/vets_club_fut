import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/form_screen/FormScreen.dart';
import '../../configurations/modal_sheet.dart';
import '../../configurations/themes.dart';

class PackageScreen extends StatefulWidget {
  static const String routeName = '/Package';

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                 horizontal: size.height * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                      tag: 'logo',
                      child: Image.asset('assets/vets_club.png',
                        width: size.width * 0.5,

                      )),
                ),
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
                                      ?.copyWith(fontSize: 13.sp),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13.sp),
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
                        () {
                          Get.offNamed(FormScreen.routeName);
                        });
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
                                      ?.copyWith(fontSize: 13.sp),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13.sp),
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
                                      ?.copyWith(fontSize: 13.sp),
                                ),
                                SizedBox(
                                  height: size.height * 0.05,
                                ),
                                Text(
                                  'Price $index',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontSize: 13.sp),
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
