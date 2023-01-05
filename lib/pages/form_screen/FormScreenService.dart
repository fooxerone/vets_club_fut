import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:vets_club/models/FormResponse.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

Future<FormResponse> sentDataForm(
    {required String email,
      required String password,}) async {
  HttpOverrides.global = MyHttpOverrides();
  var url = Uri.https('www.vets-club.com', '/api/v1/form_regester_clinic');
  var response = await http.post(url, body: {
    "email": email,
    "password": password,
  });
  var json = jsonDecode(response.body);
  return FormResponse.fromJson(json);
}