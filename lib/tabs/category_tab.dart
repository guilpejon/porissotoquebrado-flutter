import 'package:flutter/material.dart';
import 'package:porissotoquebrado/helpers/config.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'package:porissotoquebrado/tiles/category_tile.dart';
import 'package:porissotoquebrado/models/category.dart';
import 'package:porissotoquebrado/services/api.dart';

class CategoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetchCategories(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          var dividedTiles = ListTile.divideTiles(
            tiles: snapshot.data.map<Widget>((category) {
              return CategoryTile(category);
            }).toList(),
            color: Colors.grey[500],
          ).toList();

          return ListView(
            children: dividedTiles,
          );
        }
      },
    );
  }

  Future _fetchCategories() async {
    var apiResponse =
        await Api("https://api.porissotoquebrado.com.br/api/v1/categorias")
            .getData();
    List<Category> categories = apiResponse.map<Category>((map) {
      return Category.fromJson(map);
    }).toList();
    return categories;
  }
}
