import 'package:flutter/material.dart';

Widget BuildForgotPassBtn(){
  return Container(
    alignment:  Alignment.centerRight,
    child: FlatButton(
      onPressed: (){},
      padding:  EdgeInsets.only(right: 0),
      child:  Text('Esqueceu a Senha?',
      style:  TextStyle(
        color:  Colors.white,
        fontWeight:  FontWeight.bold,

      ),
      ),
    ),
  );
}