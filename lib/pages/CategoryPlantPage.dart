import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Category.dart';
import 'package:flutter_application_1/models/Nursery.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pages/PlantInfoPage.dart';
import 'package:flutter_application_1/widgets/ItemTile.dart';

class CategoryPlantPage extends StatelessWidget {
  const CategoryPlantPage({Key? key, required this.item}) : super(key: key);
  final Category item;

  @override
  Widget build(BuildContext context) {
    final PlantsInfo = Provider.of<List<Plant>>(context);

    List<Plant> toDisplay = [
      Plant(
        name: "null",
        description: "null",
        daysWithoutCare: 0,
        image: "image",
        id: 0,
        nursery: [0],
        price: [0])
    ];
    for (var i in item.plants) {
      toDisplay.add(PlantsInfo.elementAt(i - 1));
    }
    ;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: GridView.builder(
        itemCount: toDisplay.length - 1,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          Plant plant = toDisplay[index + 1];
          return ItemTile(item: plant);
        },
      ),
    );
  }
}
