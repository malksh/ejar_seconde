import 'dart:math';

import 'package:ejar/screens/homeScreen.dart';
import 'package:ejar/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late UserCredential userCredential;
  @override
  Widget build(BuildContext context) {
    String emaliController = '';
    String passwordController = '';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/logo.jpg',
              ),
              const SizedBox(
                height: 25,
              ),

              Column(
                children: [
                  SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      textAlign: TextAlign.end,
                      onChanged: (value) => {
                        emaliController = value,
                      },
                      obscureText: false,
                      cursorColor: const Color.fromARGB(255, 0, 0, 0),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          //focusedBorder: UnderlineInputBorder(),
                          hintText: "اسم المستخدم",
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.person_2,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      textAlign: TextAlign.end,
                      onChanged: (value) => {
                        passwordController = value,
                      },
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        //focusedBorder: UnderlineInputBorder(),
                        hintText: "كلمة المرور",
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const SginUpPage();
                        // }));
                        // ignore: prefer_interpolation_to_compose_strings
                        // print("=========================" +
                        //     emaliController +
                        //     passwordController);
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: emaliController.trim(),
                            password: passwordController.trim(),
                          );
                          
                          // print("==================aa");
                          // ignore: use_build_context_synchronously
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                        }  catch (e) {
                          
                          // print('somthing wrong $e');
                        }
                      },
                      child: const Text("تسجيل الدخول ")),
                  ElevatedButton(
                      onPressed: () async {
                        UserCredential userCredential =
                            await FirebaseAuth.instance.signInAnonymously();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      child: Text("دخول كمجهول")),
                ],
              ),

              //

              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignINpage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(
                            255, 255, 255, 255), // background color
                        // foreground color
                        // elevation color
                        elevation: 0, // elevation of button
                      ),
                      child: const Text(
                        '   انشاء حساب ',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      ' ليس لديك حساب ؟ ',
                    )
                  ],
                ),

//
              ),

              //  Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'ليس لديك حساب ؟',
              //         style: TextStyle(color: Colors.grey),
              //       ),
              //     ],
              //   ),
              // ),
              //  const SizedBox(
              //   height: 10,
              // ),

              // ElevatedButton(
              //   onPressed: () async {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const signINpage();
              //     }));
              //   },
              //   style: ElevatedButton.styleFrom(
              //     primary: Color.fromARGB(255, 8, 116, 188), // background color
              //     onPrimary: Colors.white, // foreground color
              //     shadowColor: Color.fromARGB(255, 0, 0, 0), // elevation color
              //     elevation: 2, // elevation of button
              //   ),
              //   child: const Text('  انشاء حساب  '),
              // ),
              //  const SizedBox(
              //   height: 10,
              // ),

              // Row(
              //   children: [
              //     Expanded(child:
              //       Divider(
              //       thickness: 0.5,
              //       color: Colors.grey[400],
              //     ),),

              //   ],
              // ),
            ]),
          ),
        ),
      ),
    ); //rgb(8,116,188)
  }
}
