import 'package:ejar/screens/Houses.dart';
import 'package:ejar/screens/HousesCatagory.dart';
import 'package:flutter/material.dart';

import '../models/ItemModel.dart';

class SelectCatagory extends StatefulWidget {
  const SelectCatagory({Key? key}) : super(key: key);

  @override
  State<SelectCatagory> createState() => _SelectCatagoryState();
}

class _SelectCatagoryState extends State<SelectCatagory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          catagoryButton(Icons.house_rounded, 'منازل', context, 0),
          catagoryButton(Icons.villa_rounded, 'مكاتب', context, 1),
          catagoryButton(Icons.apartment_rounded, 'شقق', context, 2),
          catagoryButton(Icons.castle_rounded, 'مخازن', context, 3),
        ],
      ),
    );
  }
}

Widget catagoryButton(IconData icon, String? text, BuildContext context, int index) {
  return Container(
    margin: const EdgeInsets.all(18),
    // padding: const EdgeInsets.all(8),
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade600),
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HousesCatagory(index: index, item: Item(color: null, location: '', phoneNumber: null, price: null, thumb_url: '', title: '', type: ''), text: text!,);
        }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: Color(0xFF2972FF),
          ),
          Text('$text'),
        ],
      ),
    ),
  );
}