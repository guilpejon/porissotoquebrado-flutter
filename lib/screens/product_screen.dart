import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:porissotoquebrado/models/product.dart';

class ProductScreen extends StatefulWidget {
  final Product product;

  ProductScreen(this.product);

  @override
  _ProductScreenState createState() => _ProductScreenState(product);
}

class _ProductScreenState extends State<ProductScreen> {
  final Product product;

  _ProductScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: product.images.map(
                (url) {
                  return NetworkImage(url);
                },
              ).toList(),
              dotSize: 4,
              dotSpacing: 15,
              dotBgColor: Colors.transparent,
              dotColor: primaryColor,
              autoplay: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  maxLines: 3,
                ),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 44,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Preciso Disso",
                      style: TextStyle(fontSize: 18),
                    ),
                    color: primaryColor,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
//                Text(
//                  "Descrição",
//                  style: TextStyle(
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500,
//                  ),
//                ),
//                Text(
//                  product.description,
//                  style: TextStyle(fontSize: 16),
//                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
