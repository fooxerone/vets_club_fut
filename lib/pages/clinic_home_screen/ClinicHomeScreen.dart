import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vets_club/pages/patients_layout/patients_layout.dart';
import '../../configurations/themes.dart';

class ClinicHomeScreen extends StatelessWidget {
  static const String routeName = '/clinicHome';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinic Name'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: ImageIcon(AssetImage('assets/arrow_back.png')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * 0.023,vertical: size.height * 0.023),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: MyTheme.purple,
            ),
            SizedBox(height: size.height * 0.05,),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){
                    Get.toNamed(PatientsLayout.routeName);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Patients',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ),
                ),
               Spacer(),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.42,

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: MyTheme.lightBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Owners',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                  child: Container(
                    height: size.height * 0.18,
                    width: size.width * 0.42,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Drugs',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  ),
                ),
               Spacer(),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                  child: Container(
                    height: size.height * 0.18,
                    width: size.width * 0.42,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Items & Processes',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  ),
                ),
              ],
                  ),
            SizedBox(
              height: size.height * 0.04,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: (){

              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 4,
                color: Colors.transparent,
              child: Container(
                height: size.height * 0.18,
                width: size.width * 0.42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: MyTheme.lightBlue,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Inventory',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
