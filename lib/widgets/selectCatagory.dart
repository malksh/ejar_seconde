import 'package:flutter/material.dart';

class SelectCatagory extends StatefulWidget {
  const SelectCatagory({super.key});

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
          catagoryButton(Icons.house_rounded, 'منازل', context),
          catagoryButton(Icons.villa_rounded, 'مكاتب', context),
          catagoryButton(Icons.apartment_rounded, 'شقق', context),
          catagoryButton(Icons.castle_rounded, 'مخازن', context),
        ],
      ),
    );
  }
}

Widget catagoryButton(IconData icon, String? text, context) {
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
