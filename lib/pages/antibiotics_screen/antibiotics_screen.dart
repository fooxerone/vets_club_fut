import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configurations/themes.dart';

class AntibioticsScreen extends StatelessWidget {
  const AntibioticsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height * 0.03),
      child: ListView.separated(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
