import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/elevated_btn.dart';

ShowModalBottomSheet(
  BuildContext context,
  String title,
  String des,
  VoidCallback onPressed,
) {
  var size = MediaQuery.of(context).size;
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    elevation: 0,
    context: context,
    builder: (context) => Container(
      height: size.height * 0.5,
      padding: EdgeInsets.all(size.height * 0.02),
      decoration: BoxDecoration(
      color: Color(0xFFE2EFF1),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20).w,topRight: Radius.circular(20).w)
      ),
      child: Column(
        children: [
          Text(title),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(des),
          Spacer(),
          ElevatedBtn(title: 'next', onPressed: onPressed),
        ],
      ),
    ),
  );
}
