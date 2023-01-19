import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vets_club/pages/formNotes_screen/FormNotesScreen.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
               horizontal: size.height * 0.025,vertical: size.height * 0.025),
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
                height: size.height * 0.04,
              ),
              Text('Vets Club Notes Package'),
              SizedBox(
                height: size.height * 0.01,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(25).w,
                onTap: () {
                  ShowModalBottomSheet(
                      context,
                      'Vets Club Notes Package',
                      ' desdesdesdesdesdesdes'
                          'desdesdesdesdesdes',
                      () {
                        Get.offNamed(FormNotesScreen.routeName);
                      });
                },
                child: Card(
                  elevation: 4,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25).w),

                  child: Container(
                      padding: EdgeInsets.all(size.height * 0.02),
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(25).w,
                          border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))

                      ),
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
    );
  }
}
