import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vets_club/configurations/themes.dart';
import 'package:vets_club/pages/Items&processes_Layout/Items&processes_Layout.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreen.dart';
import 'package:vets_club/pages/Login_Screen/LoginScreenViewModel.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreen.dart';
import 'package:vets_club/pages/Register_Screen/RegisterScreenViewModel.dart';
import 'package:vets_club/pages/addPatient_screen/addPatient_screen.dart';
import 'package:vets_club/pages/clinic_home_screen/ClinicHomeScreen.dart';
import 'package:vets_club/pages/form_screen/FormScreen.dart';
import 'package:vets_club/pages/info_screen/information_screen.dart';
import 'package:vets_club/pages/package_screen/PackageScreen.dart';
import 'package:vets_club/pages/patients_layout/patients_layout.dart';
import 'package:vets_club/pages/twoPackage_screen/TwoPackageScreen.dart';
import 'package:get/get.dart';


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
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context , child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        title: 'Vets club',
        getPages: [
          GetPage(name: LoginScreen.routeName, page: () => LoginScreen(),
              transition: Transition.fadeIn,
              fullscreenDialog: true
          ),
          GetPage(name: FormScreen.routeName, page: () => FormScreen(),
              transition: Transition.size,
              fullscreenDialog: true
          ),
          GetPage(name: PatientsLayout.routeName, page: () => PatientsLayout(),
              transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(
              name: TwoPackageScreen.routeName, page: () => TwoPackageScreen(),
              transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(
              name: ClinicHomeScreen.routeName, page: () => ClinicHomeScreen(),
              transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: PackageScreen.routeName, page: () => PackageScreen(),
              transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: InfoScreen.routeName, page: () => InfoScreen(),
              transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: RegisterScreen.routeName, page: () => RegisterScreen(),
            transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: PatientsLayout.routeName, page: () => PatientsLayout(),
            transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: ItemsAndProcessesLayout.routeName, page: () => ItemsAndProcessesLayout(),
            transition: Transition.rightToLeftWithFade,
              fullscreenDialog: true

          ),
          GetPage(name: AddPatientScreen.routeName, page: () => AddPatientScreen(),
            transition: Transition.size,
            fullscreenDialog: true,
          ),
        ],
        initialRoute: ClinicHomeScreen.routeName,
      );
    }
    )
    );
  }
}
