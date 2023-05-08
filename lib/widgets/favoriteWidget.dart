import 'package:ejar_1/models/ItemModel.dart';
import 'package:ejar_1/widgets/houseCard.dart';
import 'package:ejar_1/widgets/suggestionsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
 
  @override
  Widget build(BuildContext context) {
    
 
    return Scaffold(
            appBar: AppBar(
              title: const Text("المفضلة"),
              backgroundColor:const Color.fromARGB(255, 255, 255, 255),
            ),
            body: Column(
              children: [
                Image.asset('assets/image6.jpg')
                //  SuggestionsList("توصيات ", Item.recommendation),
              ],
            ),
            
            bottomNavigationBar: BottomNavigationBar(
                elevation: 0.0,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.blue.shade600,
                unselectedItemColor: Colors.grey.shade600,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'الرئيسية'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.heart), label: 'المفضلة'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_outlined), label: 'الرسائل'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: 'الصفحة الشخصية '),
                ],
                ),
          );
  }
}