import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/Controller/logincontroller.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: GetBuilder<LoginControler>(
            init: LoginControler(),
            builder: (_) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        GetBuilder<LoginControler>(
                          init: LoginControler(),
                          builder: (_) {
                            return Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.blueAccent,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                    onPressed: () {
                                      _.PickImage();
                                    },
                                    icon: Icon(Icons.camera_enhance)),
                              ),
                            );
                          },
                        ),
                        //
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            // color: Colors.red,
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            controller: _.emailcontroller,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: _.hintEmail,
                            ),
                          ),
                          TextFormField(
                            controller: _.passwordcontroller,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: _.hintPassword,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: 50,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Colors.blueGrey,
                            ]),
                      ),
                      child: Center(
                          child: Text("Sign In",
                              style: TextStyle(
                                fontSize: 30,
                              ))),
                    ),
                  )
                ],
              );
            }));
  }
}
