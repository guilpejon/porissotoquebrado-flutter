import 'package:flutter/material.dart';
import 'package:porissotoquebrado/models/category.dart';
import 'package:porissotoquebrado/models/product.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'package:porissotoquebrado/tiles/product_tile.dart';

class CategoryScreen extends StatelessWidget {
  final snapshot;

  CategoryScreen(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(snapshot.name),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: FutureBuilder(
          future: _fetchCategory(snapshot.id),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );
            //else
            //print(snapshot);
            return TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                GridView.builder(
                  padding: EdgeInsets.all(4),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: snapshot.data.products.length,
                  itemBuilder: (context, index) {
//                    return Container();
                    return ProductTile(
                      "grid",
                      Product.fromJson(snapshot.data.products[index]),
                    );
                  },
                ),
                ListView.builder(
                  padding: EdgeInsets.all(4),
                  itemCount: snapshot.data.products.length,
                  itemBuilder: (context, index) {
//                    return Container();
                    return ProductTile(
                      "list",
                      Product.fromJson(snapshot.data.products[index]),
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Future _fetchCategory(id) async {
    var apiResponse = await Api(
            "https://api.porissotoquebrado.com.br/api/v1/categorias/${id}")
        .getData();
    Category category = Category.fromJson(apiResponse);
    return category;
  }
}
