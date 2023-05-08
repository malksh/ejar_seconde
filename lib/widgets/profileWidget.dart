import 'package:ejar_1/screens/messages_screeen.dart';
import 'package:ejar_1/widgets/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '',
           style: TextStyle(color: Colors.black87),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                    CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/profile_icon.jpg"),
                ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            ' خليفة الاطرش',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                'مؤجر عقارات',
                                style: TextStyle(
                                    color: Colors.blueGrey[400],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Center(
                              child: IconButton(
                            icon: const Icon(Icons.message),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  ChatScreen(Chat());
                              }));
                            },
                          )),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsets.only(left: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.blueGrey[200],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text(
                            '203',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'متابعين',
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text(
                            '932',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'متابعون',
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Text(
                            '30',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'البنايات',
                            style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.blueGrey[200],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [],
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        const Text(
                          'موقع المكتب',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    const Text('الخمس, ليبيا'),
                    // Container(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         height: 250,
                    //         width: MediaQuery.of(context).size.width,
                    //         child: Row(

                    //           children: [
                    //             ClipRRect(
                    //               borderRadius: BorderRadius.circular(30),
                    //               child: Image.network(
                    //                   'https://www.almrsal.com/wp-content/uploads/2022/12/40-%D9%88%D8%A7%D8%AC%D9%87%D8%A7%D8%AA-%D9%85%D9%86%D8%A7%D8%B2%D9%84-%D8%A8%D8%B3%D9%8A%D8%B7%D8%A9-1-1.jpg'),
                    //             ),
                    //             const SizedBox(width: 20),
                    //             ClipRRect(
                    //               borderRadius: BorderRadius.circular(30),
                    //               child:
                    //               Image.network('https://www.almrsal.com/wp-content/uploads/2022/12/40-%D9%88%D8%A7%D8%AC%D9%87%D8%A7%D8%AA-%D9%85%D9%86%D8%A7%D8%B2%D9%84-%D8%A8%D8%B3%D9%8A%D8%B7%D8%A9-1-1.jpg')
                    //               ,
                    //               ),
                    //           ],
                    //         ),
                    //       ),

                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
