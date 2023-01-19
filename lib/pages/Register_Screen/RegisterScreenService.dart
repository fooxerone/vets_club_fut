import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:vets_club/models/AuthResponse.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

Future<AuthResponse> createAccountDoc(
    {required String name,
    required String email,
    required String password,
    required String phone}) async {
  HttpOverrides.global = MyHttpOverrides();
  var url = Uri.https('www.vets-club.com', '/api/v1/regester');
  var response = await http.post(url, body: {
    "name": name,
    "email": email,
    "password": password,
    "phone": phone,
  });
  var json = jsonDecode(response.body);
  return AuthResponse.fromJson(json);
}
