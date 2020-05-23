import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'package:http/http.dart' as http;
import 'package:transparent_image/transparent_image.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBackground() => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Color.fromARGB(255, 253, 181, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        );

    return Stack(
      children: <Widget>[
        _buildBodyBackground(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Color.fromARGB(255, 250, 129, 96),
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  "PorIssoToQuebrado",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
              ),
            ),
            FutureBuilder(
              future:
                  Api("https://api.porissotoquebrado.com.br/api/v1/produtos")
                      .getData(),
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
                      return StaggeredTile.count(2, 2);
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
