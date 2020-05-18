import 'package:flutter/material.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'package:http/http.dart' as http;

class HomeTab extends StatelessWidget {
  Future _fetchProducts() {
    return Api("https://api.porissotoquebrado.com.br/api/v1/produtos")
        .getData();
  }

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
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Produtos"),
                centerTitle: true,
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
                  print(snapshot);
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: Container(),
                    ),
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
