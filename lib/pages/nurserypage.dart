import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/Nursery.dart';

import 'PlantPage.dart';

//import 'PlantPage.dart';

class NurseryPage extends StatefulWidget {
  const NurseryPage({Key? key}) : super(key: key);

  @override
  State<NurseryPage> createState() => _NurseryPageState();
}

class _NurseryPageState extends State<NurseryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  // loadData() async {
  //   await Future.delayed(Duration(seconds: 1));
  //   final nurseryJson =
  //       await rootBundle.loadString("assets/files/Nursery.json");
  //   var decodeData = jsonDecode(nurseryJson);
  //   var nurseryData = decodeData["Nursery"];
  //   NurseryModel.nursery = List.from(nurseryData)
  //       .map<Nursery>((nursery) => Nursery.fromMap(nursery))
  //       .toList();

  //   setState(() {});
  // }

  Widget build(BuildContext context) {
    final NurseriesInfo = Provider.of<List<Nursery>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Nursery By Area"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
        child: ListView.builder(
          itemCount: NurseriesInfo.length,
          itemBuilder: (context, index) {
            final nursery = NurseriesInfo[index];
            return Card(
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlantPage(item: nursery)),
                ),
                leading: Image.network(
                  nursery.image,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(nursery.name),
                subtitle: Text(nursery.address),
                minVerticalPadding: 7,
              ),
            );
          },
        ),
      ),
    );
  }
}
