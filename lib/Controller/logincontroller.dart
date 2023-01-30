import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginControler extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final String hintEmail = "Type E-mail";
  final String hintPassword = "Enter Password";

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "enter e-mail";
    }
    if (!GetUtils.isEmail(value)) {
      return "enter correct email";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "enter e-mail";
    }
    if (value.length < 6) {
      return "enter correct password";
    }
    return null;
  }

  String? FullName(String? value) {
    if (value == null || value.isEmpty) {
      return "enter full name";
    }
  }

  File? imageFile;
  final ImagePicker _picker = ImagePicker();

  PickImage() async {
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageFile = File(image.path);
      update();
    }
  }

  //  FOR STATUS BAR & SNACK BAR
  onloginpressed() async {
    await Get.snackbar("Status", "Successfuly");
    await Get.defaultDialog(title: "Succeed", content: Text("Successfully"));
  }
}
