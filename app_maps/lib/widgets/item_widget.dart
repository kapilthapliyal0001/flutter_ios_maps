import 'package:soqua/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.grey[100],
      child: ListTile(
        leading: Image.network(item.image_url),
        title: Text(
          item.name,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.2,
        ),
        subtitle: Text(item.comment),
        // onTap: () async {
        //   await item.comment;
        //   print(item.comment);
        // },
        // subtitle: Text(
        //   item.rating.toString(),
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
        trailing: Text(
          item.rating.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: item.rating > 4 ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}
