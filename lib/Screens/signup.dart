import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/signupcontroller.dart';
import 'login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(login());
                },
                icon: Icon(Icons.add))
          ],
          title: Center(child: Text("")),
        ),
        body: GetBuilder<SignupControler>(
            init: SignupControler(),
            initState: (_) {},
            builder: (_) {
              return Column(children: [
                Container(
                  height: 60,
                  // color: Colors.grey,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 300,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          controller: _.namecontroller,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Enter Name'),
                        ),
                        TextField(
                          controller: _.emailcontroller,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Enter E-Mail',
                          ),
                        ),
                        TextField(
                            controller: _.passwordcontroller,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.password_outlined),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Ener Password',
                            )),
                        TextField(
                            controller: _.phonecontroller,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Phone Number',
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 88,
                  // color: Colors.blue,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Sign up with social account",
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.install_desktop)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.messenger_rounded)),
                              ],
                            ),
                          )
                        ],
                      ),
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
                      child: IconButton(
                          onPressed: () {
                            _.signupdata(
                                name: _.namecontroller.text,
                                e_mail: _.emailcontroller.text,
                                password: _.passwordcontroller.text,
                                phonenumber: _.phonecontroller.text);
                          },
                          icon: Text("SIGN UP"))),
                )
              ]);
            }));
  }
}
