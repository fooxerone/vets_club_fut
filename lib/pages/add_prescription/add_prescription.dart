import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configurations/themes.dart';
import '../../widgets/arrowBack.dart';
import '../../widgets/textField.dart';

class AddPrescriptionScreen extends StatefulWidget {
  static const String routeName = '/addPres.';

  @override
  State<AddPrescriptionScreen> createState() => _AddPrescriptionScreenState();
}

class _AddPrescriptionScreenState extends State<AddPrescriptionScreen> {

  TextEditingController caseNumController = TextEditingController();
  TextEditingController instructionController = TextEditingController();
  TextEditingController nameControl = TextEditingController();
  TextEditingController animalNameControl = TextEditingController();
  TextEditingController phoneControl = TextEditingController();
  TextEditingController addressControl = TextEditingController();
  TextEditingController estimatedControl = TextEditingController();
  TextEditingController dosageControl = TextEditingController();
  List<String> estimatedDose = ['ml','g','tabs','liter','puffs','bolus','capsules','teaspoons'];
  List<String> frequency = ['q24^h','q12^h','q6^h','q4^h','q2^h','EOD'];
  List<String> dosage = ['q24^h','q12^h','q6^h','q4^h','q2^h','EOD'];
  List<String> routes = ['PO','IV','IM','Aerosol','SQ','IT','IP','IC','RP','CRI','Epidural'];
  String? selectedEstimated;
  String? selectedRoute;
  String? selectedFrequency;
  String? selectedDosage;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: ArrowBackIcon(() {}),
          title: Text('add Prescription'),
        ),
        body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.03),
                  child: Column(
                    children: [
                      TextFieldWidget(
                          label: 'Owner Name',
                          controller: nameControl,
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      TextFieldWidget(
                          label: 'Address',
                          controller: addressControl,
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
                          label: 'Animal Name',
                          controller: animalNameControl,
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Wrap(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(size.height * 0.01),
                            decoration: BoxDecoration(
                                color: MyTheme.lightBlue,
                                borderRadius: BorderRadius.circular(15).w,
                                border: Border.fromBorderSide(
                                    BorderSide(color: MyTheme.boldBlue))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dosage'),
                                SizedBox(height: size.height * 0.015,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextFieldWidget(
                                          controller: dosageControl,
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      flex: 3,
                                    ),
                                    SizedBox(width: size.width * 0.05,),
                                    Expanded(
                                      flex: 2,
                                      child: CustomDropdownButton2(
                                        hint: 'Select',
                                        dropdownItems: dosage,
                                        value: selectedDosage,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedDosage = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.02,),
                                Text('Estimated Dose'),
                                SizedBox(height: size.height * 0.015,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextFieldWidget(
                                            controller: estimatedControl,
                                            keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      flex: 3,
                                    ),
                                    SizedBox(width: size.width * 0.05,),
                                    Expanded(
                                      flex: 2,
                                      child: CustomDropdownButton2(
                                        hint: 'Select',
                                        dropdownItems: estimatedDose,
                                        value: selectedEstimated,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedEstimated = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.02,),
                                Text('Routes'),
                                SizedBox(height: size.height * 0.015,),
                                CustomDropdownButton2(
                                  hint: 'Select Route',
                                  dropdownItems: routes,
                                  value: selectedRoute,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedRoute = value;
                                    });
                                  },
                                ),
                                SizedBox(height: size.height * 0.02,),
                                Text('Frequency'),
                                SizedBox(height: size.height * 0.015,),
                                CustomDropdownButton2(
                                  hint: 'Select Frequency',
                                  dropdownItems: frequency,
                                  value: selectedFrequency,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedFrequency = value;
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
                          label: 'Instructions',
                          controller: instructionController,
                          keyboardType: TextInputType.text
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}
