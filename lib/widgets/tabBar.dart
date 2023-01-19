import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../configurations/themes.dart';

class TabBarWidget extends StatefulWidget {
  List list;
  ValueChanged<int>? onTap;
  int currentIndex;
  TabBarWidget({required this.list,required this.onTap,required this.currentIndex});


  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: widget.list.length,
        initialIndex: widget.currentIndex,
        child: TabBar(
          labelPadding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
          splashBorderRadius: BorderRadius.circular(15).w,
          isScrollable: true,
          tabs: widget.list.map((val) {
            return Container(
                padding: EdgeInsets.all(size.height * 0.01),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15).w,
                    border: Border.fromBorderSide(BorderSide(color: MyTheme.purple)),
                    color: widget.currentIndex == widget.list.indexOf(val) ? MyTheme.purple : MyTheme.lightBlue
                ),
                child: Text(val,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: widget.currentIndex == widget.list.indexOf(val) ? Colors.white: Colors.black
                  ),
                ));
          }).toList(),
          physics: BouncingScrollPhysics(),
          onTap: widget.onTap,
          indicatorColor: Colors.transparent,
        )
    );
  }
}
