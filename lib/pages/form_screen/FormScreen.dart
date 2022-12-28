import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/twoPackage_screen/TwoPackageScreen.dart';
import 'package:vets_club/widgets/checkbox_listTile.dart';
import 'package:vets_club/widgets/elevated_btn.dart';
import 'package:vets_club/widgets/iconBtn.dart';
import 'package:vets_club/widgets/textField.dart';

class FormScreen extends StatefulWidget {
  static const String routeName = '/form';

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
  TextEditingController clinicServiceControl = TextEditingController();
  TextEditingController animalController = TextEditingController();
  bool isStatic = false;
  bool isHospital = false;
  bool isMobile = false;
  List<String> clinicType = [];
  List<XFile> images = [];
  XFile? camera;
  final ImagePicker picker = ImagePicker();
  List<String> animals = ['Equine', 'Pet', 'Ovine', 'Bovine'];
  List animalsSelected = [];
  int index = 0;
  double height = 0;

  List<String> country = [
    'Country 1',
    'Country 2',
    'Country 3',
    'Country 4'
  ];
  late String countrySelected = country[0].toString();
  List<String> Governorate = [
    'Governorate 1',
    'Governorate 2',
    'Governorate 3',
    'Governorate 4'
  ];
  late String GovernorateySelected = Governorate[0].toString();
  List<String> Cities = ['Cities 1', 'Cities 2', 'Cities 3', 'Cities 4'];
  late String CitiesSelected = Cities[0].toString();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.height * 0.03, vertical: size.height * 0.045),
          child: Column(
            children: [
              Text(
                'Promote Your Vet Clinic',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Clinic Name',
                  controller: clinicNameControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Location',
                  controller: locationControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Phone Number',
                  controller: phoneControl,
                  keyboardType: TextInputType.phone),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Owner',
                  controller: ownerControl,
                  keyboardType: TextInputType.text),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: size.height * 0.026,),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                              child: SizedBox(
                                height: size.height * 0.06,
                                child: TextFieldWidget(
                                    label: 'Vet Name ${index+1}',
                                    controller: ownerControl,
                                    keyboardType: TextInputType.text),
                              )),
                          SizedBox(width: size.width * 0.015,),
                          Expanded(
                              child: SizedBox(
                                height: size.height * 0.06,
                                child: TextFieldWidget(
                                    label: 'Qualification ${index+1}',
                                    controller: ownerControl,
                                    keyboardType: TextInputType.text),
                              )),
                        ],
                      ),
                    );
                  },
                  itemCount: index),
             index > 0? SizedBox(
                height: size.height * 0.03,
              ) : SizedBox(
               height:0,
             ),
              Row(
                children: [
                  Text('Add Veterinarian',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16.sp),
                  ),
                  Spacer(),
                  IconBtn(
                      onPressed: () {
                        index++;
                        setState(() {});
                      },
                      icon: Icons.add)
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Professional Practice License',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 15.sp),
                  ),
                  Spacer(),
                  IconBtn(
                      onPressed: () async {
                        camera = await picker.pickImage(source: ImageSource.camera);
                      },
                      icon: Icons.camera_alt_outlined),
                  IconBtn(
                      onPressed: () async {
                        images = await picker.pickMultiImage();

                      },
                      icon: Icons.photo)
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Clinic License',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16.sp),
                  ),
                  Spacer(),
                  IconBtn(
                      onPressed: () async {
                        camera = await picker.pickImage(source: ImageSource.camera);
                      },
                      icon: Icons.camera_alt_outlined),
                  IconBtn(
                      onPressed: () async {
                        images = await picker.pickMultiImage();

                      },
                      icon: Icons.photo)
                ],
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
                          label: 'Add Field Speciality',
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
              SizedBox(
                height: size.height * 0.03,
              ),
              Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.0095),
                    decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(15).w,
                        border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.height * 0.009),
                          child: Text(
                            'Clinic Type',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CheckBoxListTile(
                                  text: 'Mobile Clinic',
                                  onChanged: (value) {
                                    isMobile = value ?? false;
                                    if (isMobile == true) {
                                      clinicType.add('Mobile Clinic');
                                    } else {
                                      clinicType.remove('Mobile Clinic');
                                    }
                                    setState(() {});
                                  },
                                  value: isMobile),
                            ),
                            Expanded(
                              child: CheckBoxListTile(
                                  text: 'Static Clinic',
                                  onChanged: (value) {
                                    isStatic = value ?? false;
                                    if (isStatic == true) {
                                      clinicType.add('Static Clinic');
                                    } else {
                                      clinicType.remove('Static Clinic');
                                    }
                                    setState(() {});
                                  },
                                  value: isStatic),
                            ),
                          ],
                        ),
                        CheckBoxListTile(
                            text: 'Hospital',
                            onChanged: (value) {
                              isHospital = value ?? false;
                              if (isHospital == true) {
                                clinicType.add('Hospital');
                              } else {
                                clinicType.remove('Hospital');
                              }
                              setState(() {});
                            },
                            value: isHospital),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(size.height * 0.0095),
                    decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(15).w,
                        border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Country',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Container(
                                  width: size.width * 0.45,
                                  child:  DropdownButtonFormField2(
                                    decoration: InputDecoration(
                                     isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),

                                       ),
                                    hint: Text(
                                        'Choose Country',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black45,
                                    ),
                                    iconSize: 30,
                                    buttonHeight: 60,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    items: country
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                        .toList(),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select gender.';
                                      }
                                    },
                                    onChanged: (value) {
                                      //Do something when changing the item if you want.
                                    },
                                  ),
                                ),

                              ],
                            ),  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Country',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Container(
                                  width: size.width * 0.45,
                                  child:  DropdownButtonFormField2(
                                    decoration: InputDecoration(
                                     isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),

                                       ),
                                    hint: Text(
                                        'Choose Country',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black45,
                                    ),
                                    iconSize: 30,
                                    buttonHeight: 60,
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    items: country
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                        .toList(),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select gender.';
                                      }
                                    },
                                    onChanged: (value) {
                                      //Do something when changing the item if you want.
                                    },
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Cities',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 18, color: Colors.black),
                        ),
                        DropdownButton(
                          value: CitiesSelected,
                          focusColor: Colors.black,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 15),
                          items: Cities.map((String val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              CitiesSelected = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  minLine: 1,
                  maxLine: 4,
                  label: 'Clinic Services',
                  controller: clinicServiceControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Picture of Clinic (Logo)',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16.sp),
                  ),
                  Spacer(),
                  IconBtn(
                      onPressed: () async {
                        camera = await picker.pickImage(source: ImageSource.camera);
                      },
                      icon: Icons.camera_alt_outlined),
                  IconBtn(
                      onPressed: () async {
                        images = await picker.pickMultiImage();

                      },
                      icon: Icons.photo)
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'More photos',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16.sp),
                  ),
                  Spacer(),
                  IconBtn(
                      onPressed: () async {
                        camera = await picker.pickImage(source: ImageSource.camera);
                      },
                      icon: Icons.camera_alt_outlined),
                  IconBtn(
                      onPressed: () async {
                        images = await picker.pickMultiImage();
                        },
                      icon: Icons.photo)
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              ElevatedBtn(title: 'next', onPressed: () {
                Get.offNamed(TwoPackageScreen.routeName);
              })
            ],
          ),
        ),
      ),
    );
  }
}
