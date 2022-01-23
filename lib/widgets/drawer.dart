import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/CategoryPage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.worldatlas.com/r/w1200/upload/89/99/3b/shutterstock-1263201358.jpg";

    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover),
                      color: Colors.white38,
                    ),
                    accountEmail: Text(""),
                    // currentAccountPicture: Image.network(imageUrl),
                    accountName: Text(""))),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.categoryRoute),
              title: Text(
                "Plants",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              minVerticalPadding: 0.0,
              trailing: Icon(
                CupertinoIcons.arrowtriangle_right_circle,
              ),
              hoverColor: Colors.lightGreen[300],
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.nurseryRoute),
              title: Text(
                "Nursery",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              minVerticalPadding: 0.0,
              trailing: Icon(
                CupertinoIcons.arrowtriangle_right_circle,
              ),
            ),
            ListTile(
              title: Text(
                "Care",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                CupertinoIcons.arrowtriangle_right_circle,
              ),
            ),
            ListTile(
              title: Text(
                "About us",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                CupertinoIcons.arrowtriangle_right_circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
