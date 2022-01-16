import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/body.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/itemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 50;

  final String name = "Goutam Gunjal";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final plantJson = await rootBundle.loadString("assets/files/plant.json");
    var decodeData = jsonDecode(plantJson);
    var plantsData = decodeData["Plants"];
    CatalogModel.plants = List.from(plantsData)
        .map<Plant>((plant) => Plant.fromMap(plant))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(10, (index) => CatalogModel.plants[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Plant InfoCare",
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        elevation: 0,
      ),
      body: body(),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_alt),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.circle_grid_3x3), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart_circle), label: "Care"),
        ],
      ),
    );
  }
}
