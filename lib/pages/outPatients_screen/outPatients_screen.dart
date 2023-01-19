import 'package:flutter/material.dart';
import 'package:vets_club/widgets/arrowBack.dart';

class OutPatientsScreen extends StatelessWidget {
  const OutPatientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: ArrowBackIcon((){
          Navigator.pop(context);
        }),
        title: Text('Out Patients'),
      ),
    );
  }
}
