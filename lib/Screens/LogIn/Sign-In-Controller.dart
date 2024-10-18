import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {

  final userNameController = TextEditingController();
  final schoolNameController = TextEditingController();
  final idNumberController = TextEditingController();


  bool validateFields() {
    if (userNameController.text.isEmpty ||
        schoolNameController.text.isEmpty ||
        idNumberController.text.isEmpty) {
      Get.snackbar('Error', 'All fields are required!',
          backgroundColor: Colors.red, colorText: Colors.white);
      return false;
    }
    return true;
  }


  void handleLogin() {
    if (validateFields()) {

      Get.toNamed('/Chapters');
    }
  }

  @override
  void onClose() {

    userNameController.dispose();
    schoolNameController.dispose();
    idNumberController.dispose();
    super.onClose();
  }
}
