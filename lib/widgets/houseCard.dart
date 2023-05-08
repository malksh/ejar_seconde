import 'package:ejar_1/models/ItemModel.dart';
import 'package:flutter/material.dart';

import '../screens/homeScreen.dart';

class HouseCerd extends StatefulWidget {
  const HouseCerd(this.index, this.item, this.onTap, {Key? key})
      : super(key: key);
  final Item item;
  final int index;
  final Function()? onTap;

  @override
  State<HouseCerd> createState() => _HouseCerdState();
}

class _HouseCerdState extends State<HouseCerd> {
  //List<Item> favorite = [];
  static List<Item> allOfTheBulding = [
    Item(
        title: 'منزل',
        type: 'منزل',
        color: false,
        location: 'بنغازي , ليبيا',
        price: 4000,
        thumb_url:
            'https://www.almrsal.com/wp-content/uploads/2022/12/40-%D9%88%D8%A7%D8%AC%D9%87%D8%A7%D8%AA-%D9%85%D9%86%D8%A7%D8%B2%D9%84-%D8%A8%D8%B3%D9%8A%D8%B7%D8%A9-1-1.jpg',
        phoneNumber: 218928888888),
    Item(
        title: 'منزل صغير',
        type: 'منزل',
        color: false,
        location: 'تاجوراء, ليبيا',
        price: 500,
        thumb_url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS335ZuVOtVUA5eyfMEeuKwllD531T0bAO06g&usqp=CAU.jpg',
        phoneNumber: 2189299999999),
    Item(
        title: 'شقة ',
        type: 'شقة',
        color: false,
        location: 'زليتن, ليبيا',
        price: 1000,
        thumb_url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBqdzVMfrrSUvWuH7X-w9QbY68jEhrS2eKfJOTNDLOvl0uf2zkf7grPbLR_GiH1y7k-GQ&usqp=CAU.jpg',
        phoneNumber: 218915555555),
    Item(
        title: 'استوديو ',
        type: 'شقة',
        color: false,
        location: 'سرت , ليبيا',
        price: 1500,
        thumb_url:
            ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLuTJF7RrbMKlF1Wf3QaBPCnNGFzzQiPRlYTos8hx0uy2vwmv2_aVXqs9P_boVYg76_g&usqp=CAU.jpg',
        phoneNumber: 218943442323),
    Item(
        title: 'منزل حديث',
        type: 'منزل',
        color: false,
        location: 'مصراتة, ليبيا',
        price: 4000,
        thumb_url:
            'https://www.almrsal.com/wp-content/uploads/2022/12/40-%D9%88%D8%A7%D8%AC%D9%87%D8%A7%D8%AA-%D9%85%D9%86%D8%A7%D8%B2%D9%84-%D8%A8%D8%B3%D9%8A%D8%B7%D8%A9-1-1.jpg',
        phoneNumber: 218922222222),
    Item(
        title: 'منزل صغير',
        type: 'منزل',
        color: false,
        location: ' الخمس, ليبيا',
        price: 500,
        thumb_url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS335ZuVOtVUA5eyfMEeuKwllD531T0bAO06g&usqp=CAU.jpg',
        phoneNumber: 218923333333),
    Item(
        title: 'منزل ',
        type: 'منزل',
        color: false,
        location: 'طرابلس, ليبيا',
        price: 1000,
        thumb_url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBqdzVMfrrSUvWuH7X-w9QbY68jEhrS2eKfJOTNDLOvl0uf2zkf7grPbLR_GiH1y7k-GQ&usqp=CAU.jpg',
        phoneNumber: 218924444444),
    Item(
        title: 'شقة',
        type: 'شقة',
        color: false,
        location: 'طرابلس , ليبيا',
        price: 1500,
        thumb_url:
            ' https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxLuTJF7RrbMKlF1Wf3QaBPCnNGFzzQiPRlYTos8hx0uy2vwmv2_aVXqs9P_boVYg76_g&usqp=CAU.jpg',
        phoneNumber: 218915555555),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: const Color(0xfcf9f8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: NetworkImage(widget.item.thumb_url!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.item.catagory ?? '',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.item.title!,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      widget.item.location!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.item.price}د.ل / شهري',
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${widget.item.phoneNumber}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    IconButton(
                      color: widget.item.color! ? Colors.red : Colors.black,
                      icon: const Icon(Icons.favorite_outlined),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                          if (allOfTheBulding[widget.index].color!) {
                            try {
                              print('00000000000000000000');
                              print(widget.item.color!);

                              widget.item.color = !widget.item.color!;
                              allOfTheBulding[widget.index].color =
                                  !widget.item.color!;
                            } on Exception catch (e) {
                              // TODO
                            }
                          } else {
                            try {
                              print('1111111111111111111111');
                              print(widget.item.color!);

                              widget.item.color = !widget.item.color!;
                              allOfTheBulding[widget.index].color =
                                  !widget.item.color!;
                            } on Exception catch (e) {
                              print("---------------------------${e}");
                              
                            }
                          }
                        });

                        if (!allOfTheBulding[widget.index].color!) {
                          favorite.add(widget.item);
                        } else {
                          favorite.remove(widget.item);
                          setState(() {});
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
