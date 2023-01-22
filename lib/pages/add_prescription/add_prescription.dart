import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vets_club/configurations/pdf.dart';
import 'package:vets_club/widgets/elevated_btn.dart';

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
  TextEditingController warningControl = TextEditingController();
  TextEditingController drNameControl = TextEditingController();
  TextEditingController qualifyControl = TextEditingController();
  TextEditingController searchDrugsController = TextEditingController();
  List<String> estimatedDose = [
    'ml',
    'g',
    'tabs',
    'liter',
    'puffs',
    'bolus',
    'capsules',
    'teaspoons'
  ];
  List<String> frequency = ['q24^h', 'q12^h', 'q6^h', 'q4^h', 'q2^h', 'EOD'];
  List<String> dosage = ['q24^h', 'q12^h', 'q6^h', 'q4^h', 'q2^h', 'EOD'];
  List<String> routes = [
    'PO',
    'IV',
    'IM',
    'Aerosol',
    'SQ',
    'IT',
    'IP',
    'IC',
    'RP',
    'CRI',
    'Epidural'
  ];
  String? selectedEstimated;
  String? selectedRoute;
  String? selectedFrequency;
  String? selectedDosage;
  final List<String> items = [
    'A_Item1',
    'A_Item2',
    'A_Item3',
    'A_Item4',
    'B_Item1',
    'B_Item2',
    'B_Item3',
    'B_Item4',
  ];
  List<String> selectedValue = [];

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
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(size.height * 0.01),
                          decoration: BoxDecoration(
                              color: MyTheme.lightBlue,
                              borderRadius: BorderRadius.circular(15).w,
                              border: Border.fromBorderSide(
                                  BorderSide(color: MyTheme.boldBlue))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text('Select Drugs',
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ),
                              items: items.map((item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  enabled: false,
                                  child: StatefulBuilder(
                                    builder: (context, menuSetState) {
                                      final isSelected =
                                          selectedValue.contains(item);
                                      return InkWell(
                                        onTap: () {
                                          isSelected
                                              ? selectedValue.remove(item)
                                              : selectedValue.add(item);
                                          setState(() {});
                                          menuSetState(() {});
                                        },
                                        child: Container(
                                          height: double.infinity,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.height * 0.01),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  isSelected
                                                      ? const Icon(Icons
                                                          .check_box_outlined)
                                                      : const Icon(Icons
                                                          .check_box_outline_blank),
                                                  SizedBox(
                                                      width: size.width * 0.01),
                                                  Text(
                                                    item,
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              }).toList(),
                              scrollbarAlwaysShow: true,
                              value: selectedValue.isEmpty
                                  ? null
                                  : selectedValue.last,
                              onChanged: (value) {},
                              buttonHeight: 40.h,
                              buttonWidth: 140.w,
                              itemHeight: 40.h,
                              itemPadding: EdgeInsets.zero,
                              selectedItemBuilder: (context) {
                                return items.map(
                                  (item) {
                                    return Container(
                                      alignment: AlignmentDirectional.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.height * 0.01),
                                      child: Text(
                                        selectedValue.join(','),
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        maxLines: 1,
                                      ),
                                    );
                                  },
                                ).toList();
                              },
                              searchController: searchDrugsController,
                              searchInnerWidget: Padding(
                                padding: EdgeInsets.all(size.height * 0.01),
                                child: TextFormField(
                                  controller: searchDrugsController,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding:
                                        EdgeInsets.all(size.height * 0.01),
                                    hintText: 'Search for an item...',
                                    hintStyle: TextStyle(fontSize: 12.sp),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8).w,
                                    ),
                                  ),
                                ),
                              ),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14).w,
                                color: MyTheme.lightBlue,
                              ),
                              searchMatchFn: (item, searchValue) {
                                return (item.value
                                    .toString()
                                    .contains(searchValue));
                              },
                              onMenuStateChange: (isOpen) {
                                if (!isOpen) {
                                  searchDrugsController.clear();
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'Dosage',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontSize: 20.sp,
                              ),
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
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
                            SizedBox(
                              width: size.width * 0.05,
                            ),
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
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text('Estimated Dose'),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
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
                            SizedBox(
                              width: size.width * 0.05,
                            ),
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
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Routes'),
                                SizedBox(
                                  height: size.height * 0.015,
                                ),
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
                              ],
                            ),
                            Column(
                              children: [
                                Text('Frequency'),
                                SizedBox(
                                  height: size.height * 0.015,
                                ),
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
                            )
                          ],
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
                  maxLine: 10,
                  label: 'Instructions',
                  controller: instructionController,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  minLine: 1,
                  maxLine: 10,
                  label: 'Warnings',
                  controller: warningControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Doctor Name',
                  controller: drNameControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFieldWidget(
                  label: 'Qualification',
                  controller: qualifyControl,
                  keyboardType: TextInputType.text),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedBtn(
                  title: 'Save',
                  onPressed: () async {
                    await createPrescription(
                        ownerName: nameControl.text,
                        address: addressControl.text,
                        phone: phoneControl.text,
                        animalName: animalNameControl.text,
                        species: instructionController.text);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
