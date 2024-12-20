import 'package:get/get.dart';

class Appcontroller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    // Delay for 3 seconds before deciding the navigation path
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed('/mainScreen');
  }
}
