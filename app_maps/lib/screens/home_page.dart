import 'package:app_maps/models/catalog.dart';
import 'package:app_maps/widgets/drawer.dart';
import 'package:app_maps/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int days = 31;
    final dummyList = List.generate(50, (index) => CatalogModal.products[0]);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "SoQua Flutter Application",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            // itemCount: CatalogModal.products.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                // item: CatalogModal.products[index],
                item: dummyList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
