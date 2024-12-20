import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'package:pdf_application_1/view/pdfScreen.dart';
import '../controller/appController.dart';
import 'package:path_provider/path_provider.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
  final Appcontroller controller = Get.put(Appcontroller());
}

class _MainscreenState extends State<Mainscreen> {
  // Function to load the PDF from assets
  Future<String> loadPdfFromAssets(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    final tempDir = await getTemporaryDirectory();
    final file = File("${tempDir.path}/temp_pdf.pdf");
    await file.writeAsBytes(byteData.buffer.asUint8List());
    return file.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal.shade600,
        // centerTitle: true,
        
        title: const Text(
           textAlign: TextAlign.left,
          'Anya',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _showSnackbar(context, 'Happy Birthday Anya');
              },
              icon: const Icon(
                Icons.notification_important_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                elevation: 4,
                color: Colors.teal.shade600,
                child: ListTile(
                  title: const Text(
                    'PS: ILU',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: const Text(
                    'View',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () async {
                    String pdfPath = await loadPdfFromAssets(
                        'assets/pdf/Sesilia_Ahern_PS_seni_sevirem-ing.pdf');
                    Get.to(() => PdfViewerScreen(pdfPath: pdfPath));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

void _showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white), // Change text color
      ),
      backgroundColor: Colors.teal, // Change background color
      behavior: SnackBarBehavior.floating, // Optional: makes it float
      duration: Duration(seconds: 5), // Optional: custom duration
    ),
  );
}

}
