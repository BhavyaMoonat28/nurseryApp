import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/PlantInfoPage.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import 'ItemTile.dart';

class categoryTitle extends StatelessWidget {
  const categoryTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8),
            height: size.height * 0.06,
            width: size.width * 0.6,
            //color: Colors.green.shade300,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
              textScaleFactor: 1.2,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class plantRow extends StatelessWidget {
  const plantRow({
    Key? key,
    required this.list, this.press,
  }) : super(key: key);
  final List<dynamic> list;
  final press;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (var item in list) 
          ItemTile(item: item)
        
        // for (int i = 0; i < 3; i++)
        //   ItemTile(
        //     item: list[i],
        //   )
      ]),
    );
  }
}
