import 'package:flutter/material.dart';
class SignInOrUpButton extends StatelessWidget{
  SignInOrUpButton({required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
   return                 Container(

     child: Center(
       child: Text(
         text
        ,
         style: TextStyle(
             color: Colors.white,
             fontSize: 18,
             fontWeight: FontWeight.w500),
       ),
     ),
     width: 300,
     height: 45,
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(40),
         color: Colors.black),
   );

  }




}











