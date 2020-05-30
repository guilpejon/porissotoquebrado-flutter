import 'package:flutter/material.dart';
import 'package:porissotoquebrado/screens/category_screen.dart';

class CategoryTile extends StatelessWidget {
  final snapshot;

  CategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(snapshot.thumbnail),
      ),
      title: Text(snapshot.name),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CategoryScreen(snapshot)));
      },
    );
  }
}
