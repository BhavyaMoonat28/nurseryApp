import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Catalog.dart';
import 'package:flutter_application_1/pages/PlantInfoPage.dart';
import 'package:flutter_application_1/pages/PlantPage.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  //final press;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => item is Plant
          ? Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlantInfoPage(plant: item)))
          : Navigator.push(context,
              MaterialPageRoute(builder: (context) => PlantPage(item: item))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        width: size.width * 0.4,
        // height: size.height * 0.3,
        child: Card(
          // margin: EdgeInsets.symmetric(horizontal: 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              item is Plant
                  ? Image.asset(
                      'assets/images/plants/${item.image}',
                      width: size.width * 0.43,
                      height: 120,
                      fit: BoxFit.fill,
                    )
                  : Image.network(
                      item.image,
                      width: size.width * 0.4,
                      height: 120,
                      fit: BoxFit.fill,
                    ),
              Container(
                // height: 36,
                alignment: Alignment.center,
                padding: item.name.length > 16
                    ? EdgeInsets.all(0)
                    : EdgeInsets.all(10),
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 15,
                          color: MyTheme.pLightColor.withOpacity(0.10))
                    ]),
                child: Text(
                  item.name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
