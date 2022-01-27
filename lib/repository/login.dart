import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_api1/Screens/bem_vindo.dart';

Future<void> login(
  context,
  String email,
  String password,
) async {
  if (email.isNotEmpty && password.isNotEmpty) {
    var response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: ({'email': email, 'password': password}));
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BemVindo()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login Invalido'),
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Campos em branco!'),
      ),
    );
  }
}
