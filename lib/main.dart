
import 'package:agfow/ui/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()=>runApp(

    GetMaterialApp(



  theme: ThemeData(primaryColor: Colors.green.shade700, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green.shade700) ),
  debugShowCheckedModeBanner: false,


  home: const SplashScreen(),

));