import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vets_club/widgets/floating_btn.dart';
import '../../configurations/themes.dart';
import '../../widgets/arrowBack.dart';
import '../../widgets/textField.dart';


class AddItemProcessScreen extends StatefulWidget {
  static const String routeName = '/addItem';

  @override
  State<AddItemProcessScreen> createState() => _AddItemProcessScreenState();
}

class _AddItemProcessScreenState extends State<AddItemProcessScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController moreInfoController = TextEditingController();
  TextEditingController purchaseController = TextEditingController();
  TextEditingController sellingController = TextEditingController();
  TextEditingController actualController = TextEditingController();

  String itemsOrProcesses = 'Item';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(() {
          Get.back();
        }),
        title: Text('Items & Processes'),
      ),
      body: Wrap(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15).w
            ),
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.03, horizontal: size.height * 0.03),
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
                    Text('Add New $itemsOrProcesses',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 20.sp
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Item',
                          groupValue: itemsOrProcesses,
                          onChanged: (value) {
                            setState(() {
                              itemsOrProcesses = value.toString();
                            });
                          },
                          activeColor: MyTheme.purple,
                        ),
                         Text('Item',
                        style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Spacer(),
                        Radio(
                          value: 'Process',
                          groupValue: itemsOrProcesses,
                          onChanged: (value) {
                            setState(() {
                              itemsOrProcesses = value.toString();
                            });
                          },
                          activeColor: MyTheme.purple,
                        ),
                         Text('Process',
                         style: Theme.of(context).textTheme.bodyMedium,
                         ),
                      ],
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
                      minLine: 1,
                      maxLine: 4,
                      label: "More Info",
                      controller: moreInfoController,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label: "Purchase Price",
                      controller: purchaseController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label: "Selling Price",
                      controller: sellingController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFieldWidget(
                      label: "actual Stock",
                      controller: actualController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    FloatingActionBtn(onPressed: (){
                    })
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
