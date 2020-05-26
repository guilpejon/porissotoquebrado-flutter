import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  var snapshot;

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
      onTap: () {},
    );
  }
}
