import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/models/Category.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/PlantPage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/widgets/NavigationBar.dart';
import 'CategoryPlantPage.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<CategoryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  Widget build(BuildContext context) {
    final CategoryInfo = Provider.of<List<Category>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Plants By Category"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: CategoryInfo.length,
        itemBuilder: (context, index) {
          final mycategory = CategoryInfo[index];
          return Card(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: ListTile(
              leading: Image.network(
                mycategory.image,
                width: 100,
                fit: BoxFit.cover,
              ),
              title: Text(mycategory.name),
              minVerticalPadding: 20,
              horizontalTitleGap: 20,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryPlantPage(item: mycategory)),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
