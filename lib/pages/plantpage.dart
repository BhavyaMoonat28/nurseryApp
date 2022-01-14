import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantPage extends StatelessWidget {
  const PlantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plants By Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 18.0),
        child: ListView(
          //padding: EdgeInsets.,
          children: [
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://hips.hearstapps.com/housebeautiful.cdnds.net/18/07/1518540708-selection-of-houseplants.jpg"),
                title: Text("Foliage Plants"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F608990c4bcf2c7b4802c9725%2F0x0.jpg"),
                title: Text("Indoor Plants"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Card(
              child: ListTile(
                leading: Image.network(
                    "http://cdn.shopify.com/s/files/1/0047/9730/0847/articles/perennialherbs-1200x800.jpg?v=1600662184"),
                title: Text("Herbal Plants"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://static.wixstatic.com/media/612309_4785a88593f84920be65758efc365988~mv2.jpg/v1/fill/w_600,h_400,al_c,q_80,usm_0.66_1.00_0.01/Tree%20Fern.webp"),
                title: Text("Avenue Plants"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://media.cntraveler.com/photos/5ea9df4e2921a4fe0d379fd3/master/w_3759,h_2502,c_limit/Cordoba-geraniums-GettyImages-485667353.jpg"),
                title: Text("Flowering Plants"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://www.almanac.com/sites/default/files/styles/landscape/public/image_nodes/bonsai-4634225_1920.jpg?itok=OY2nVAC4"),
                title: Text("Bonsai Plants"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
