import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Color(0xFFF8FAFC),
        hintText: 'بحث',
        prefixIcon: Icon(CupertinoIcons.search),
        suffixIcon: Icon(Icons.filter_alt_outlined),
      ),
    );
  }
}