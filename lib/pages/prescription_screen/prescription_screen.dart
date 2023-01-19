import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/widgets/arrowBack.dart';

import '../../widgets/textField.dart';

class PrescriptionScreen extends StatelessWidget {
  static const String routeName = '/prescription';

  TextEditingController caseNumController = TextEditingController();
  TextEditingController instructionController = TextEditingController();
  TextEditingController nameControl = TextEditingController();
  TextEditingController animalNameControl = TextEditingController();
  TextEditingController phoneControl = TextEditingController();
  TextEditingController addressControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(() { }),
        title: Text('Prescription'),
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
                      borderRadius: BorderRadius.circular(20).w,
                      border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
                    ),
                    child: Column(
                      children: [
                        Text('Treatment Plan',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black
                          ),
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
