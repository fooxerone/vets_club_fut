import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreenViewModel.dart';
import '../../configurations/regex.dart';
import '../../configurations/themes.dart';
import '../../widgets/elevated_btn.dart';
import '../../widgets/textField.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/Register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool isVisibleTwo = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var provider = Provider.of<RegisterProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.023),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/vets_club.png',
                      width: size.width * 0.5,
                    ),
                  ),
                  TextFieldWidget(
                      label: 'Full Name',
                      controller: nameController,
                      prefix: Icon(
                        Icons.person_outline,
                        color: MyTheme.boldBlue,
                      ),
                      validator: (name) {
                        if (name == null || name.trim().isEmpty) {
                          return 'Full Name must not be empty';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextFieldWidget(
                      label: 'Email Address',
                      controller: emailController,
                      validator: (email) {
                        if (email == null || email.trim().isEmpty) {
                          return 'Email Address must not be empty';
                        }
                        if(RegexValidate.isValidEmail(email) == false){
                          return 'Email Address is not valid';
                        }
                        return null;
                      },
                      prefix: Icon(
                        Icons.alternate_email,
                        color: MyTheme.boldBlue,
                      ),
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextFieldWidget(
                      label: 'Phone Number',
                      controller: phoneController,
                      prefix: Icon(
                        Icons.phone,
                        color: MyTheme.boldBlue,
                      ),
                      validator: (phone) {
                        if (phone == null || phone.trim().isEmpty) {
                          return 'Phone Number must not be empty';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextFieldWidget(
                      isVisible: isVisible,
                      label: 'Password',
                      controller: passController,
                      validator: (password) {
                        if (password == null || password.trim().isEmpty) {
                          return 'Password must not be empty';
                        } else if (password.length < 8) {
                          return 'Password must not smaller than 8 characters';
                        }
                        return null;
                      },
                      prefix: Icon(
                        Icons.password,
                        color: MyTheme.boldBlue,
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          isVisible = !isVisible;
                          setState(() {});
                        },
                        icon: Icon(
                          isVisible == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: MyTheme.boldBlue,
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextFieldWidget(
                      isVisible: isVisibleTwo,
                      label: 'Confirm Password',
                      controller: confirmPassController,
                      validator: (password) {
                        if (password == null || password.trim().isEmpty) {
                          return 'Confirm Password must not be empty';
                        } else if (password != passController.text) {
                          return 'Password must be similar';
                        }
                        return null;
                      },
                      prefix: Icon(
                        Icons.password,
                        color: MyTheme.boldBlue,
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          isVisibleTwo = !isVisibleTwo;
                          setState(() {});
                        },
                        icon: Icon(
                          isVisibleTwo == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: MyTheme.boldBlue,
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  ElevatedBtn(
                      title: 'Register'.toUpperCase(),
                      onPressed: () {
                        provider.createAccount(context,
                            name: nameController.text,
                            email: emailController.text,
                            password: passController.text,
                            phone: phoneController.text);
                      }),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do you Have Account..?'.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 15.sp),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.offNamed(LoginScreen.routeName);
                          },
                          child: Text(
                            'Login'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 15.sp),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
