import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vets_club/configurations/regex.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreenViewModel.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreen.dart';
import 'package:vets_club/widgets/elevated_btn.dart';
import 'package:vets_club/widgets/textField.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = '/Login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var provider = Provider.of<LoginProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.023),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/vets_club.png',
                    width: size.width * 0.5,
                  ),
                ),
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
                  height: size.height * 0.04,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password..?'.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                SizedBox(
                  height: size.height * 0.04,
                ),
                ElevatedBtn(title: 'Login'.toUpperCase(), onPressed: () {
                  if(formKey.currentState!.validate()){
                    provider.loginAccount(context, email: emailController.text, password: passController.text);
                  }
                }),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t Have Account..?'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.normal,
                        fontSize: 15
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                         Get.toNamed(RegisterScreen.routeName,
                         );
                        },
                        child: Text(
                          'Register'.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 15
                          ),
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
