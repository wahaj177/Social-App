import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:social_app/Screens/signup.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: signup()

        // FOR SPLASH SCREEN

        // AnimatedSplashScreen(
        //     animationDuration: Duration(seconds: 5),
        //     splash: Expanded(
        //       child: Column(
        //         children: [
        //           Image.asset(
        //             "assets/covid.png",
        //           ),
        //           Text("COVID-19")
        //         ],
        //       ),
        //     ),
        //     nextScreen: signup()),
        );
  }
}
