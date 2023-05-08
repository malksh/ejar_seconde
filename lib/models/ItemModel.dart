 class Item {
  String? title;
  String? type;
  bool? color;
  String? catagory;
  // ignore: non_constant_identifier_names
  String? thumb_url;
  String? location;
  double? price;
  int? phoneNumber;

  Item(
      {required this.title,
      required this.type,
      required this.color,
      required this.location,
      required this.price,
      required this.thumb_url,
      required this.phoneNumber});

  static List<Item> recommendation = [
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
        phoneNumber: 218915555555)
  ];
  static List<Item> nerbay = [
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
        phoneNumber: 218943442323)
  ];
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
  }
 