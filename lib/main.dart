import 'package:animsani/demo_screen.dart';
import 'package:animsani/secode_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'first_Screen.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'demo',
      routes: {
        '/':(context)=>First_Screen(),
        'sec':(context)=>Secode_Screen(),
        'demo':(context)=>Demo_Screem(),
      },
    )
  );
}