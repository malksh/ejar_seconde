import 'package:ejar_1/models/ItemModel.dart';
import 'package:ejar_1/screens/homeScreen.dart';
import 'package:ejar_1/widgets/houseCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/detailsScreen.dart';

class SuggestionsList extends StatefulWidget {
  SuggestionsList(this.tilte, this.items, {super.key});
  String? tilte;
  List<Item> items;
  @override
  State<SuggestionsList> createState() => _SuggestionsListState();
}

class _SuggestionsListState extends State<SuggestionsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.tilte!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('رؤية المزيد'),
              )
            ],
          ),
          SizedBox(height: 12),
          Container(
            height: 340,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  HouseCerd(index, widget.items[index], () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            DtailsScreen(widget.items[index]))));
              }),
            ),
          ),
        ],
      ),
    );
  }
}
