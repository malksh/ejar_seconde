import 'package:ejar/models/ItemModel.dart';
import 'package:ejar/screens/messages_screeen.dart';
import 'package:ejar/widgets/searchWidget.dart';
import 'package:ejar/widgets/selectCatagory.dart';
import 'package:ejar/widgets/suggestionsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/homeWidget.dart';
import '../widgets/homeWidget.dart';
import '../widgets/homeWidget.dart';
import '../widgets/homeWidget.dart';
import '../widgets/houseCard.dart';
import '../widgets/profileWidget.dart';
import 'detailsScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  int current_index = 0;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isFavorite = false;
List<Item> favorite = [];
String location = 'الخمس';
var items = [
  'الخمس',
  'مصراتة',
  'طرابلس',
  'بنغازي',
  'زليتن',
  'سرت',
];

class _HomeScreenState extends State<HomeScreen> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    switch (widget.current_index) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              Icon(
                Icons.location_on,
                color: Colors.blue.shade600,
              ),
              DropdownButton(
                value: location,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    location = newValue!;
                  });
                },
              ),
            ]),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SearchWidget(),
                const SelectCatagory(),
                const SizedBox(
                  height: 20,
                ),

                SuggestionsList("توصيات ", Item.recommendation),
                const SizedBox(
                  height: 20,
                ),
                SuggestionsList("قريب منك", Item.nerbay),
                SuggestionsList('كل العروض', Item.allOfTheBulding)
                // Container(
                //   child: Column(
                //     children: [
                //       ListView.builder(
                //       itemCount: allOfTheBulding.length,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (BuildContext contex, int index) {
                //         return Container(
                //             margin: const EdgeInsets.only(left: 5, right: 5),
                //             child:
                //                 Image.network(allOfTheBulding[index], fit: BoxFit.fill));
                //       }),
                //     ],
                //   ),
                // ),
              ],
            ),
          )),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue.shade600,
              unselectedItemColor: Colors.grey.shade600,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'الرئيسة'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart), label: 'المفضلة'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: 'الرسائل'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person), label: 'الصفحة الشخصية'),
              ],
              currentIndex: widget.current_index,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  widget.current_index = index;
                });
              }),
        );
      case 1:
        return Scaffold(
          appBar: AppBar(
            title: const Text("المفضلة"),
            backgroundColor: Colors.blue.shade600,
          ),
          body: ListView.builder(
            itemCount: favorite.length,
            itemBuilder: (context, index) {
              return HouseCerd(index, favorite[index], () {
                Navigator.push(
                    context, 
                    MaterialPageRoute(
                        builder: ((context) => DtailsScreen(favorite[index]))));
              });
            },
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
                    icon: Icon(CupertinoIcons.person), label: 'الصفحة الشخصية'),
              ],
              currentIndex: widget.current_index,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  widget.current_index = index;
                });
              }),
        );
      case 2:
        return Scaffold(
          appBar: AppBar(
            title: Text('الرسائل'),
          ),
          body: MessageScreen(),
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
                    icon: Icon(CupertinoIcons.person), label: 'الصفحة'),
              ],
              currentIndex: widget.current_index,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  widget.current_index = index;
                });
              }),
        );
      default:
        {
          return Scaffold(
            appBar: AppBar(
              title: Text('الصفحة االشخصية'),
            ),
            body: ProfileWidget(),
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
                      icon: Icon(CupertinoIcons.person),
                      label: 'الصفحة الشخصية'),
                ],
                currentIndex: widget.current_index,
                type: BottomNavigationBarType.fixed,
                onTap: (int index) {
                  setState(() {
                    widget.current_index = index;
                  });
                }),
          );
        }
    }
  }
}
