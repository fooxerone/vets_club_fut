import 'package:flutter/material.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';

import '../../configurations/regex.dart';
import '../../configurations/themes.dart';
import '../../widgets/elevated_btn.dart';
import '../../widgets/textField.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'Register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            children: [
              Image.asset(
                'assets/vets_club.png',
                width: size.width * 0.5,
              ),
              TextFieldWidget(
                  label: 'Full Name',
                  controller: emailController,
                  prefix: Icon(
                    Icons.person_outline,
                    color: MyTheme.boldBlue,
                  ),
                  keyboardType: TextInputType.emailAddress),
              TextFieldWidget(
                  label: 'Email Address',
                  controller: emailController,
                  validator: (email) {
                    if (email == null || email.trim().isEmpty) {
                      return 'Email Address must not be empty';
                    } else if (RegexValidate.isValidEmail(email)) {
                      return 'Email Address not valid';
                    }
                    return null;
                  },
                  prefix: Icon(
                    Icons.alternate_email,
                    color: MyTheme.boldBlue,
                  ),
                  keyboardType: TextInputType.emailAddress),
              TextFieldWidget(
                  label: 'Phone Number',
                  controller: emailController,
                  prefix: Icon(
                    Icons.phone,
                    color: MyTheme.boldBlue,
                  ),
                  keyboardType: TextInputType.emailAddress),
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
              TextFieldWidget(
                  isVisible: isVisible,
                  label: 'Confirm Password',
                  controller: passController,
                  validator: (password) {
                    if (password == null || password.trim().isEmpty) {
                      return 'Password must not be empty';
                    } else if (password != passController) {
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
              ElevatedBtn(title: 'Register'.toUpperCase(), onPressed: () {}),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don you Have Account..?'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                      child: Text(
                        'Login'.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 15),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
