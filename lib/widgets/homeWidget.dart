import 'package:ejar_1/models/ItemModel.dart';
import 'package:ejar_1/widgets/searchWidget.dart';
import 'package:ejar_1/widgets/selectCatagory.dart';
import 'package:ejar_1/widgets/suggestionsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}
String dropdownvalue = 'الخمس';
var items = [
  'الخمس',
  'مصراتة',
  'طرابلس',
  'بنغازي',
  'زليتن',
  'سرت',
];
class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            title: Row(children: [
              Icon(
                Icons.location_on,
                color: Colors.blue.shade600,
              ),
              DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
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
                SuggestionsList("قريب منك", Item.nerbay)
              ],
            ),
          )),
         
        );
  }
}