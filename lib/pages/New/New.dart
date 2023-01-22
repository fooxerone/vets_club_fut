import 'package:flutter/material.dart';
import 'package:vets_club/configurations/themes.dart';

class New extends StatefulWidget {
  static const String routeName = '/new';

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  String _Gender = 'male';
  String Patients = 'In Patients';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: Row(
              children: [
                Radio(
                  value: 'In Patients',
                  groupValue: Patients,
                  onChanged: (value) {
                    setState(() {
                      Patients = value.toString();
                    });
                  },
                  activeColor: MyTheme.purple,
                ),
                const Text('In Patients'),
                const Spacer(),
                Radio(
                  value: 'Out Patients',
                  groupValue: Patients,
                  onChanged: (value) {
                    setState(() {
                      Patients = value.toString();
                    });
                  },
                  activeColor: MyTheme.purple,
                ),
                const Text('Out Patients'),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.1,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            color: Colors.transparent,
            child: Container(
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: MyTheme.lightBlue,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Row(
                children: [
                  Radio(
                    value: 'male',
                    groupValue: _Gender,
                    onChanged: (value) {
                      setState(() {
                        _Gender = value.toString();
                      });
                    },
                    activeColor: MyTheme.purple,
                  ),
                  const Text('Male'),
                  const Spacer(),
                  Radio(
                    value: 'Female',
                    groupValue: _Gender,
                    onChanged: (value) {
                      setState(() {
                        _Gender = value.toString();
                      });
                    },
                    activeColor: MyTheme.purple,
                  ),
                  const Text('Female'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
