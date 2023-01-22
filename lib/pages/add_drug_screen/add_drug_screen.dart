import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../configurations/themes.dart';
import '../../widgets/arrowBack.dart';
import '../../widgets/floating_btn.dart';
import '../../widgets/textField.dart';

class AddDrugScreen extends StatefulWidget {
  static const String routeName = '/addDrug';

  @override
  State<AddDrugScreen> createState() => _AddDrugScreenState();
}

class _AddDrugScreenState extends State<AddDrugScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController principlesController = TextEditingController();
  TextEditingController purchaseController = TextEditingController();
  TextEditingController sellingController = TextEditingController();
  TextEditingController drugStockController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(() {
          Get.back();
        }),
        title: Text('add drug'),
      ),
      body: Wrap(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15).w
            ),
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.03, horizontal: size.height * 0.02),
            elevation: 8,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  color: MyTheme.lightBlue,
                  borderRadius: BorderRadius.circular(15).w,
                  border: Border.fromBorderSide(BorderSide(color: MyTheme.boldBlue))
              ),
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.02, horizontal: size.height * 0.02),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  children: [
                    Text('Add New Drug',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 20.sp
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                        label: "Name",
                        controller: nameController,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label: "Active Principles",
                      controller: principlesController,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.39,
                          height: size.height * 0.07,
                          child: TextFieldWidget(
                            label: 'bottle selling price',
                            controller: purchaseController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                       Spacer(),
                        SizedBox(
                          width: size.width * 0.39,
                          height: size.height * 0.08,
                          child: TextFieldWidget(
                            label: 'bottle volume',
                            controller: purchaseController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label: "Drug Stock",
                      controller: drugStockController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label:'Date of Entry',
                      controller: dateController,
                      prefix: Icon(Icons.date_range_outlined,color: Colors.black,),
                      showCursor: false,
                      readOnly: true,
                      onTap: ()async{
                         selectedDate = (await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: selectedDate.subtract(Duration(days: 365)),
                            lastDate: selectedDate.add(Duration(days: 365))))!;
                        dateController.text =DateFormat.yMMMd().format(selectedDate);
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    FloatingActionBtn(onPressed: (){})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
