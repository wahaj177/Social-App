import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupControler extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  CollectionReference mycollection =
      FirebaseFirestore.instance.collection("SIGN_UP USER");
  Future signupdata({
    required String name,
    required String e_mail,
    required String password,
    required String phonenumber,
  }) async {
    final cred = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: e_mail, password: password);
    User? myuser = cred.user;
    if (myuser != null) {
      DocumentReference mydoucment = mycollection.doc(myuser.uid);
      Map<String, dynamic> datauser = {
        "name": name,
        "e_mail": e_mail,
        "password": password,
        "phonenumber": phonenumber,
      };
      await mydoucment.set(datauser);
    }
  }

  // FOR E-MAIL VALIDATION
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "enter e-mail";
    }
    if (!GetUtils.isEmail(value)) {
      return "enter correct email";
    }
    return null;
  }

  // FOR PASSWORD VALIDATION
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "enter e-mail";
    }
    if (value.length < 6) {
      return "enter correct password";
    }
    return null;
  }

  //  FOR STATUS BAR & SNACK BAR
  onsignuppressed() async {
    await Get.snackbar("Status", "Successfuly");
    await Get.defaultDialog(title: "Succeed", content: Text("Successfully"));
  }
}
