import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pdf_application_1/view/mainScreen.dart';
import 'package:pdf_application_1/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anya',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          
          ),
        useMaterial3: true,
         scaffoldBackgroundColor: Colors.white,
     ),
      initialRoute: '/',
         getPages : [
         GetPage(name: '/', page: ()=> SplashScreen()),
         GetPage(name: '/mainScreen', page: ()=>  Mainscreen())
        ]
     
    );
  }
}
