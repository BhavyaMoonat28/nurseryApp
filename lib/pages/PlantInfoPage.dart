import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';

class PlantInfoPage extends StatelessWidget {
  const PlantInfoPage({Key? key, required this.plant}) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/plants/${plant.image}',
              width: size.width * 0.8,
              height: size.height * 0.35,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              plant.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontFamily: ""),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plant.nursery.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(plant.nursery.elementAt(index)),
                    trailing:
                        Text("${plant.price.elementAt(index).toString()} Rs"));
              },
            ),
          )
        ],
      ),
    );
  }
}
