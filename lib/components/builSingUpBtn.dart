import 'package:flutter/material.dart';

Widget BuildsingUpBtn() {
  return GestureDetector(
    onTap: () {},
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Não tem conta?',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          TextSpan(
            text: ' Cadastre-se',
            style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
