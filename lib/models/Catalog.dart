class CatalogModel {
  static List<Plant> plants = [
    // Plant(1, "Tulsi", 102,
    //     "https://blog-images.pharmeasy.in/2021/03/31223439/shutterstock_1486021787-1.jpg"),
    // Plant(2, "ManiPlant", 112,
    //     "https://4.imimg.com/data4/TJ/TN/MY-11114742/money-plant-500x500.jpg"),
    // Plant(3, "Alovera", 112,
    //     "https://4.imimg.com/data4/TJ/TN/MY-11114742/money-plant-500x500.jpg"),
  ];
}

class Plant {
  // final num id;
  final int id;
  final String name;
  final String description;
  final int daysWithoutCare;
  final String image;
  List<dynamic> nursery;
  List<dynamic> price;

  Plant({
    required this.name,
    required this.description,
    required this.daysWithoutCare,
    required this.image,
    required this.id,
    required this.nursery,
    required this.price,
  });

  // factory Plant.fromMap(Map<String, dynamic> map) {
  //   return Plant(map["id"], map["name"], map["price"], map["image"]);
  // }

  // toMap() => {"id": id, "name": name, "price": price, "image": image};

  // @override
  // String toString() {
  //   return 'Plant(id: $id, name: $name, description: $description, daysWithoutCare: $daysWithoutCare, image: $image)';

}
