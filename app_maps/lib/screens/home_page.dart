import 'package:app_maps/models/catalog.dart';
import 'package:app_maps/widgets/drawer.dart';
import 'package:app_maps/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalog_json =
        await rootBundle.loadString("./assets/files/catalog.json");
    // var catalog_json = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalog_json);
    var productData = decodeData["restaurants"];
    CatalogModal.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // print(catalog_json);
  }

  // loadData() async {
  //   final catalogJson =
  //       await rootBundle.loadString("assets/files/catalog.json");
  //   final decodedData = jsonDecode(catalogJson);
  //   var productsData = decodedData["products"];
  //   print(productsData);
  // }

  @override
  Widget build(BuildContext context) {
    // int days = 31;
    // final dummyList = List.generate(50, (index) => CatalogModal.products[0]);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "SoQua Flutter Application",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModal.items.length,

            // itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemWidget(
                  item: CatalogModal.items[index],
                  // item: dummyList[index],
                ),
              );
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
