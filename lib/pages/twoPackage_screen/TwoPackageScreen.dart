import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/clinic_home_screen/ClinicHomeScreen.dart';

class TwoPackageScreen extends StatelessWidget {
 static const String routeName = 'twoPackage';

 GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState?.openDrawer();
        },
          icon: ImageIcon(AssetImage('assets/drawerIcon.png')),),
        title: Text('Clinic Name'),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.15,vertical: size.width * 0.05),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: MyTheme.purple,
            ),
                  SizedBox(height: size.height * 0.15,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, ClinicHomeScreen.routeName);
                    },
                    child: Container(
                      height: size.height * 0.15,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                        child: Text('Clinic',
                        style: Theme.of(context).textTheme.titleLarge,
                        ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04,),
                  Container(
                    height: size.height * 0.15,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text('Bookings',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
