import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:porissotoquebrado/helpers/config.dart';
import 'package:porissotoquebrado/models/product.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'package:http/http.dart' as http;
import 'package:transparent_image/transparent_image.dart';

class HomeTab extends StatelessWidget {
  Future _fetchProducts() async {
    var apiResponse =
        await Api("https://api.porissotoquebrado.com.br/api/v1/produtos")
            .getData();
    List<Product> products = apiResponse.map<Product>((map) {
      return Product.fromJson(map);
    }).toList();
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(color: Colors.white70),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0.0,
              expandedHeight: 57.0,
              iconTheme: new IconThemeData(color: Colors.white),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.fromLTRB(0, 23, 0, 0),
                  child: Image.asset(
                    'images/logo.png',
                    scale: 1.7,
                  ),
                ),
              ),
            ),
            FutureBuilder(
              future: _fetchProducts(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                } else {
                  return SliverStaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    staggeredTiles: snapshot.data.map<StaggeredTile>((product) {
                      return StaggeredTile.count(1, 1);
                    }).toList(),
                    children: snapshot.data.map<FadeInImage>((product) {
                      return FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: product.thumbnail,
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                  );
                }
              },
            )
          ],
        ),
      ],
    );
  }
}
