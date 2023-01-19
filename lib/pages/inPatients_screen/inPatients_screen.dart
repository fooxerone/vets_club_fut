import 'package:flutter/material.dart';

import '../../widgets/arrowBack.dart';

class InPatientsScreen extends StatelessWidget {
  const InPatientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: ArrowBackIcon((){
          Navigator.pop(context);
        }),
        title: Text('In Patients'),
      ),
    );
  }
}
