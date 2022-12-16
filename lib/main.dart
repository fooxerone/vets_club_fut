import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreen.dart';
import 'package:vets_club/pages/info_screen/information_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      title: 'Vets club',
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        InfoScreen.routeName: (_) => InfoScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
