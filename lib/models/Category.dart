// class CategoryModel {
//   static List<Category> category = [
//     Category(" Plant",
//         "https://hips.hearstapps.com/housebeautiful.cdnds.net/18/07/1518540708-selection-of-houseplants.jpg")
//   ];
// }

class Category {
  final String name;
  final String image;
  List<dynamic> plants;

  Category({required this.name, required this.image, required this.plants});

  //toMap() => {"id": id, "name": name, "price": price, "image": image};
}
