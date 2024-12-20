import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PdfViewerScreen extends StatelessWidget {
  final String pdfPath;

  const PdfViewerScreen({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
           Get.back(); 
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        title: const Text('Anya',  style: TextStyle(fontSize: 16, color: Colors.white),),
        backgroundColor: Colors.teal.shade600,
      ),
      body: PDFView(
        filePath: pdfPath,
      ),
    );
  }
}
