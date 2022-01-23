// class NurseryModel {
//   static List<Nursery> nursery = [
//     Nursery(
//         "Nature Nursery",
//         "https://indiagardening.com/directory/wp-content/uploads/2019/09/2-6-245x270.jpg",
//         ""),
//     Nursery(
//         "Jain Nursery",
//         "https://indiagardening.com/directory/wp-content/uploads/2019/10/bestnurseryinindore2.jpg",
//         "location"),
//     Nursery(
//         "Nita Nursery",
//         "https://indiagardening.com/directory/wp-content/uploads/2019/10/bestnurseryinindore3.jpg",
//         "location"),
//     Nursery(
//         "Udhyan Nursery",
//         "https://indiagardening.com/directory/wp-content/uploads/2019/10/bestnurseryinindore4.jpg",
//         "location"
//       ),
//   ];
// }

class Nursery {
  final String name;
  final String image;
  final String address;
  final List<dynamic> plants;
  final List<dynamic> price;

  Nursery(
      {required this.name,
      required this.image,
      required this.address,
      required this.plants,
      required this.price});

  //toMap() => {"id": id, "name": name, "price": price, "image": image};
}
