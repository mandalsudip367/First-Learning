class CatalogModels {
  static List<Item> item = [
    // Item(
    //     1,
    //     "iPhone 13 Pro Max",
    //     "Apple iPhone 13th Generation",
    //     1299,
    //     "#33505a",
    //     "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1631858727/Croma%20Assets/Communication/Mobiles/Images/243535_7_myyo5g.png/mxw_2048,f_auto")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(map["id"], map["name"], map["desc"], map["price"], map["color"],
        map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
