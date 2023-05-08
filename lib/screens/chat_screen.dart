import 'package:flutter/material.dart';


import '../widgets/Chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen(Chat chatsample, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF7165D6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              const  CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile_icon.jpg"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    " خليفة الاطرش",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(padding: EdgeInsets.only(top: 8, right: 15),
            child: Icon(
              Icons.call,
              color: Colors.white,
              size: 26,
            ),
            ),
            const Padding(padding: EdgeInsets.only(top: 8, right: 10),
            child: Icon(
              Icons.video_call,
              color: Colors.white,
              size: 30,
            ),
            ),
            const Padding(padding: EdgeInsets.only(top: 8, right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 26,
            ),
            ),
          ],
        ),
      ),
            body: SizedBox(height: double.infinity,width: double.infinity,
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
                itemBuilder: (context, index) => const Chat(),
                ),
            ),
              bottomSheet: Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.amber,
                          size: 30,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width / 1.6,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "يكتب...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.send,
                              size: 30,
                              color: Color(0xFF7165D6),
                            ),  ),

                  ],
                  ),

              ),
    );
  }
}