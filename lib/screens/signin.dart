import 'package:ejar/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class SignINpage extends StatefulWidget {
  const SignINpage({super.key});

  @override
  State<SignINpage> createState() => _SignINpageState();
}

class _SignINpageState extends State<SignINpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.white,
      body: SingleChildScrollView(child:
        SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 0,
            ),
            Image.asset('assets/logo.jpg',height: 250,width: 250,),
            
            SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        //focusedBorder: UnderlineInputBorder(),
                        hintText: "البريد الالكتروني",
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                      ),
                    ),
                  ),
            
            
               SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        //focusedBorder: UnderlineInputBorder(),
                        hintText: "اسم المستخدم ",
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                      ),
                    ),
                  ),
           
            
           
             
               SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        //focusedBorder: UnderlineInputBorder(),
                        hintText: " رقم الهاتف",
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                      ),
                    ),
                  ),
           
             
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      
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
            ),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                    width: 250,
                    height: 100,
                    child: TextFormField(
                      
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        //focusedBorder: UnderlineInputBorder(),
                        hintText: " إعادة كلمة المرور ",
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                      ),
                    ),
                  ),
            ),
            
            ElevatedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  HomeScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 8, 116, 188), // background color
                onPrimary: Colors.white, // foreground color
                shadowColor: Color.fromARGB(255, 0, 0, 0), // elevation color
                elevation: 2, // elevation of button
              ),
              child: const Text('  انشاء حساب  '),
            ),
         

          ]),
        ),
      ),
      
      )
      
      
      
     





    );
  }
}