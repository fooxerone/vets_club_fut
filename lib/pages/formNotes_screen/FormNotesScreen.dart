import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../configurations/themes.dart';
import '../../widgets/elevated_btn.dart';
import '../../widgets/iconBtn.dart';
import '../../widgets/textField.dart';

class FormNotesScreen extends StatefulWidget {
  static const String routeName = '/formNote';

  @override
  State<FormNotesScreen> createState() => _FormNotesScreenState();
}

class _FormNotesScreenState extends State<FormNotesScreen> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  TextEditingController clinicNameControl = TextEditingController();
  TextEditingController locationControl = TextEditingController();
  TextEditingController phoneControl = TextEditingController();
  TextEditingController ownerControl = TextEditingController();
  TextEditingController animalController = TextEditingController();
  TextEditingController clinicServiceControl = TextEditingController();
  bool isStatic = false;
  bool isHospital = false;
  bool isMobile = false;
  List<String> clinicType = [];
  List<String> animals = <String>['Equine', 'Pet', 'Ovine', 'Bovine'];
  List animalsSelected = [];
  List<XFile> images = [];
  XFile? video;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height * 0.03, vertical: size.height * 0.045),
          child: Column(
            children: [
              Text('Promote Your Vet Clinic',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: size.height * 0.03,),
              TextFieldWidget(
                  label: 'Clinic Name',
                  controller: clinicNameControl,
                  keyboardType: TextInputType.text
              ),
              SizedBox(height: size.height * 0.03,),
              TextFieldWidget(
                  label: 'Location',
                  controller: locationControl,
                  keyboardType: TextInputType.text
              ),
              SizedBox(height: size.height * 0.03,),
              TextFieldWidget(
                  label: 'Phone Number',
                  controller: phoneControl,
                  keyboardType: TextInputType.phone
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Column(
                key: key,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Clinic Specialty',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  MultiSelectContainer(
                    items: animals
                        .map((val) => MultiSelectCard(value: val, label: val))
                        .toList(),
                    onChange: (selectedItems, selectedItem) {
                      setState(() {
                        animalsSelected.add(selectedItem);
                      });
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          label: 'Other Animals',
                          controller: animalController,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      IconBtn(
                          icon: Icons.add,
                          onPressed: () {
                            animals.add(animalController.text);
                            restartApp();
                          })
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: size.height * 0.0095),
                height: size.height * 0.191,
                decoration: BoxDecoration(
                    color: MyTheme.lightBlue,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.height * 0.009),
                      child: Text('Clinic Type',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                          fontSize: 20
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,

                              title: Text('Mobile Clinic',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: isMobile,
                              onChanged: (value){
                                isMobile = value??false;
                                if(isMobile == true){
                                  clinicType.add('Mobile Clinic');
                                }
                                else{
                                  clinicType.remove('Mobile Clinic');
                                }
                                setState(() {

                                });
                              }
                          ),
                        ),
                        Expanded(
                          child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text('Static Clinic',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontSize: 16
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: isStatic,
                              onChanged: (value){
                                isStatic = value??false;
                                if(isStatic == true){
                                  clinicType.add('Static Clinic');
                                }
                                else{
                                  clinicType.remove('Static Clinic');
                                }
                                setState(() {

                                });
                              }
                          ),
                        ),
                      ],
                    ),
                    CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text('Hospital',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 16
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: isHospital,
                        onChanged: (value){
                          isHospital = value??false;
                          if(isHospital == true){
                            clinicType.add('Hospital');
                          }
                          else{
                            clinicType.remove('Hospital');
                          }
                          setState(() {

                          });
                        }
                    ),
                  ],
                ),
              ),
          SizedBox(height: size.height * 0.03,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(size.height * 0.0095),
            height: size.height * 0.1,
            decoration: BoxDecoration(
                color: MyTheme.lightBlue,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Clinic Activity Location',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                      fontSize: 16.sp
                  ),
                ),
                Row(
                  children: [
                    Text('Country'),
                  ],
                )
              ],
            ),
          ),
              SizedBox(height: size.height * 0.03,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Picture of Clinic (Logo)',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 16.sp
                    ),
                  ),
                  Spacer(),
                  IconBtn(onPressed: ()async{
                    images = await picker.pickMultiImage();
                  }, icon: Icons.camera_alt_outlined),
                ],
              ),
              SizedBox(height: size.height * 0.05,),
              ElevatedBtn(title: 'send request', onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
