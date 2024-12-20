import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_application_1/controller/appController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final Appcontroller controller = Get.put(Appcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Image.asset('assets/images/splash.png',height: 400,width: 200, fit: BoxFit.cover,),
      ),
    );
  }
}
