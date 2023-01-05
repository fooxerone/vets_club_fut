import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vets_club/configurations/themes.dart';

class InOwnersScreen extends StatefulWidget {

  @override
  State<InOwnersScreen> createState() => _InOwnersScreenState();
}

class _InOwnersScreenState extends State<InOwnersScreen> {

  bool isFav = false;
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
      ),
    );
  }
}
