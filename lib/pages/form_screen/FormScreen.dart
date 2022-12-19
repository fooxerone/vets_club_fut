import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/widgets/elevated_btn.dart';
import 'package:vets_club/widgets/iconBtn.dart';
import 'package:vets_club/widgets/textField.dart';

class FormScreen extends StatefulWidget {
  static const String routeName = 'form';

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController clinicNameControl = TextEditingController();
  TextEditingController locationControl = TextEditingController();
  TextEditingController phoneControl = TextEditingController();
  TextEditingController ownerControl = TextEditingController();
  TextEditingController clinicServiceControl = TextEditingController();
  List isSelected = [];
  bool isStatic = false;
  bool isHospital = false;
  bool isMobile = false;
  List<String> clinicType = [];
  List items = ['ddd','ddd','dd'];
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
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.07,vertical: size.width * 0.1),
          child: Column(
            children: [
                  Text('Promote Your Vet Clinic',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 36,
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
              SizedBox(height: size.height * 0.03,),
              TextFieldWidget(
                    label: 'Owner',
                    controller: ownerControl,
                    keyboardType: TextInputType.text
                ),
              SizedBox(height: size.height * 0.03,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Professional Practice License',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 16
                    ),
                  ),
                 Spacer(),
                 IconBtn(onPressed: ()async{
                   images = await picker.pickMultiImage();
                 }, icon: Icons.camera_alt_outlined),
                 IconBtn(onPressed: ()async{
                   video = await picker.pickVideo(source: ImageSource.gallery);
                 }, icon: Icons.videocam_outlined)
                ],
              ),
              SizedBox(height: size.height * 0.015,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Clinic License',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 16
                    ),
                  ),
                 Spacer(),
                 IconBtn(onPressed: ()async{
                   images = await picker.pickMultiImage();
                 }, icon: Icons.camera_alt_outlined),
                  IconBtn(onPressed: ()async{
                    video = await picker.pickVideo(source: ImageSource.gallery);
                 }, icon: Icons.videocam_outlined)
                ],
              ),
              SizedBox(height: size.height * 0.03,),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: size.width * 0.02),
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        color: MyTheme.lightBlue,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.02),
                            child: Text('Clinic Type',
                            style: Theme.of(context).textTheme.bodyLarge,
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
              TextFieldWidget(
                minLine: 1,
                  maxLine: 4,
                  label: 'Clinic Services',
                  controller: clinicServiceControl,
                  keyboardType: TextInputType.text),
              SizedBox(height: size.height * 0.03,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Picture of Clinic',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 16
                    ),
                  ),
                  Spacer(),
                  IconBtn(onPressed: ()async{
                    images = await picker.pickMultiImage();
                  }, icon: Icons.camera_alt_outlined),
                  IconBtn(onPressed: ()async{
                    video = await picker.pickVideo(source: ImageSource.gallery);
                  }, icon: Icons.videocam_outlined)
                ],
              ),
              SizedBox(height: size.height * 0.015,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('More photos',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 16
                    ),
                  ),
                  Spacer(),
                  IconBtn(onPressed: ()async{
                    images = await picker.pickMultiImage();
                  }, icon: Icons.camera_alt_outlined),
                  IconBtn(onPressed: ()async{
                    video = await picker.pickVideo(source: ImageSource.gallery);
                  }, icon: Icons.videocam_outlined)
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
  void showMultiSelect() async {
    await  showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return MultiSelectDialog(
          items: items.map((items) {
            return MultiSelectItem(items, items);
          }).toList(),
          initialValue: isSelected,
          onConfirm: (values) {
              isSelected = values;
              print(isSelected);
              setState(() {

              });
          },
        );
      },
    );
  }
}

