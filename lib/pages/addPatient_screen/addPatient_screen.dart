import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/widgets/arrowBack.dart';
import 'package:vets_club/widgets/textField.dart';

import '../../widgets/iconBtn.dart';

class AddPatientScreen extends StatefulWidget {
  static const String routeName = '/addPatient';

  @override
  State<AddPatientScreen> createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
  TextEditingController dateController = TextEditingController();
  TextEditingController caseNumController = TextEditingController();
  TextEditingController animalController = TextEditingController();
  TextEditingController nameControl = TextEditingController();
  TextEditingController locationControl = TextEditingController();
  TextEditingController phoneControl = TextEditingController();
  TextEditingController idControl = TextEditingController();
  TextEditingController farmNameControl = TextEditingController();
  List<String> animals = ['Hours', 'Dog', 'Cat', 'Lion'];
  List animalsSelected = [];
  DateTime? selectedDate;
  List patient =['in','out'];
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('add patient'),
        leading: ArrowBackIcon(() {
          Navigator.pop(context);
        }),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.03),
          child: Column(
            children: [
              TextFieldWidget(
                label: 'Date of Entry',
                controller: dateController,
                prefix: Icon(Icons.date_range_outlined,color: Colors.black,),
                showCursor: false,
                readOnly: true,
                onTap: ()async{
                var pickedDate =  await showDatePicker(
                      context: context,
                      initialDate: selectedDate??DateTime.now(),
                      firstDate: selectedDate??DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365)));
                  selectedDate = pickedDate;
                  if(pickedDate == null)return;
                  dateController.text =DateFormat.yMMMd().format(pickedDate);
                  setState(() {});
                },
              ),
              SizedBox(height: size.height *0.03,),
              TextFieldWidget(
                  label: 'Case Number',
                  showCursor: false,
                  readOnly: true,
                  controller:caseNumController ),
              SizedBox(height: size.height *0.03,),
              Column(
                key: key,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Animal Species',
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
                          label: 'Add Animal',
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
              Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(size.height * 0.012),
                  decoration: BoxDecoration(
                    color: MyTheme.lightBlue,
                    borderRadius: BorderRadius.circular(15).w,
                    border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Owner Details',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 18.sp, color: Colors.black),
                        ),
                        SizedBox(
                          height: size.height * 0.025,
                        ),
                        TextFieldWidget(
                            label: 'Name',
                            controller: nameControl,
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        TextFieldWidget(
                            label: 'Id Number',
                            controller: idControl,
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        TextFieldWidget(
                            label: 'Phone Number',
                            controller: phoneControl,
                            keyboardType: TextInputType.phone),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        TextFieldWidget(
                            label: 'Location',
                            controller: locationControl,
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        TextFieldWidget(
                            label: 'Farm Name',
                            controller: farmNameControl,
                            keyboardType: TextInputType.text),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
