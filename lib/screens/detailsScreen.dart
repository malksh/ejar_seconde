import 'package:ejar/models/ItemModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DtailsScreen extends StatefulWidget {
  DtailsScreen(this.item, {super.key});
  Item item;
  @override
  State<DtailsScreen> createState() => _DtailsScreenState();
}

class _DtailsScreenState extends State<DtailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item.title ?? "",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(16),
           image: DecorationImage(
             image: NetworkImage(widget.item.thumb_url!),
             fit: BoxFit.cover,
           ),
          ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.item.catagory??"",
            style: TextStyle(
            color: Colors.blue.shade600,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget.item.title!,
            style: TextStyle(
            color: Colors.blue.shade600,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
            overflow: TextOverflow.ellipsis,
          ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on,
                color: Colors.grey,
                ),
                Text(
                    widget.item.location!,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              
            ),
            SizedBox(height:10,
            
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                    "${widget.item.price}\د.ل / شهري",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline),
                  
                  ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: RawMaterialButton(
              onPressed: () {}, 
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
              fillColor: Colors.blue.shade600,
              child:  Text(
                "أجر الأن",
                style: TextStyle(color: Colors.white,
                fontSize: 18),
              ),
              ),
            ),
        ],
      ),
      ),
    );
  }
}
