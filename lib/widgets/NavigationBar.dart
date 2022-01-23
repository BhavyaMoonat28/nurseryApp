import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  static int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house_alt),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3), label: "Category"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_circle), label: "Care"),
      ],
      currentIndex: _selectedIndex,
      backgroundColor: MyTheme.pLightColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      onTap: (index) {
        if (index == 0)
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        else if (index == 1)
          Navigator.pushNamed(context, MyRoutes.categoryRoute);
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
