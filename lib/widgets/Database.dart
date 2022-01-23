import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Category.dart';
import 'package:flutter_application_1/models/Nursery.dart';

class DatabaseServices {
  final Query PlantsDetails =
      FirebaseFirestore.instance.collection('Plants').orderBy('id');

  final Query NurseriesDetails =
      FirebaseFirestore.instance.collection('Nurseries');

  final Query CategoryDetails =
      FirebaseFirestore.instance.collection('Categories');

  // final CollectionReference NurseryDetails =
  //     FirebaseFirestore.instance.collection("Nursery");

  // ignore: non_constant_identifier_names
  List<Plant> _PlantListFromSnapshot(QuerySnapshot snap) {
    return snap.docs.map((doc) {
      return Plant(
          name: doc.get("name").toString().trim(),
          id: doc.get("id"),
          description: doc.get("description"),
          daysWithoutCare: doc.get("dayswithoutcare"),
          image: "${doc.get("name")}.jpeg",
          nursery: doc.get("nursery"),
          price: doc.get("price"));
    }).toList();
  }

  // ignore: non_constant_identifier_names
  Stream<List<Plant>> get Plants {
    return PlantsDetails.snapshots().map(_PlantListFromSnapshot);
  }

  Stream<List<Nursery>> get Nurseries {
    return NurseriesDetails.snapshots().map(_NurseryListFromSnapshot);
  }

  List<Nursery> _NurseryListFromSnapshot(QuerySnapshot snap) {
    return snap.docs.map((doc) {
      return Nursery(
        name: doc.get("name").toString(),
        address: doc.get("address"),
        image: "${doc.get("name")}.jpeg",
        plants: doc.get("plants"),
        price: doc.get("price"),
      );
    }).toList();
  }

  Stream<List<Category>> get Categories {
    return CategoryDetails.snapshots().map(_CategoryListFromSnapshot);
  }

  List<Category> _CategoryListFromSnapshot(QuerySnapshot snap) {
    return snap.docs.map((doc) {
      return Category(
        name: doc.get("name").toString(),
        image: "${doc.get("name")}.jpeg",
        plants: doc.get("plants"),
      );
    }).toList();
  }

  // List<Nursery> _NurseryFromSnapshot(QuerySnapshot snap) {
  //   return snap.docs.map((doc) {
  //     return Nursery(
  //         id: doc.get("NurseryID"),
  //         name: doc.get("Name"),
  //         PlantsIn: doc.get("Plants"));
  //   }).toList();
  // }

  // Stream<List<Nursery>> get Nurserys {
  //   return NurseryDetails.snapshots().map(_NurseryFromSnapshot);
  // }
}
