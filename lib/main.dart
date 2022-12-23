import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreenViewModel.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreen.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreenViewModel.dart';
import 'package:vets_club/pages/clinic_home_screen/ClinicHomeScreen.dart';
import 'package:vets_club/pages/formNotes_screen/FormNotesScreen.dart';
import 'package:vets_club/pages/form_screen/FormScreen.dart';
import 'package:vets_club/pages/info_screen/information_screen.dart';
import 'package:vets_club/pages/package_screen/PackageScreen.dart';
import 'package:vets_club/pages/twoPackage_screen/TwoPackageScreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider(),),
        ChangeNotifierProvider(create: (context) => LoginProvider(),)
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: MyTheme.lightTheme,
          title: 'Vets club',
          routes: {
            LoginScreen.routeName: (_) => LoginScreen(),
            RegisterScreen.routeName: (_) => RegisterScreen(),
            InfoScreen.routeName: (_) => InfoScreen(),
            FormScreen.routeName: (_) => FormScreen(),
            PackageScreen.routeName: (_) => PackageScreen(),
            FormNotesScreen.routeName: (_) => FormNotesScreen(),
            TwoPackageScreen.routeName: (_) => TwoPackageScreen(),
            ClinicHomeScreen.routeName: (_) => ClinicHomeScreen(),
          },

          initialRoute: PackageScreen.routeName,
        ),
    );
  }
}
