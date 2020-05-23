import 'package:flutter/material.dart';
import 'package:porissotoquebrado/components/product_card.dart';

class ProductIndexScreen extends StatefulWidget {
  ProductIndexScreen({this.products});

  final products;

  @override
  _ProductIndexScreenState createState() => _ProductIndexScreenState();
}

class _ProductIndexScreenState extends State<ProductIndexScreen> {
  final PrimaryColor = const Color(0xfffa8160);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PorIssoToQuebrado'),
          backgroundColor: PrimaryColor,
        ),
//      body: Center(child: Text(widget.products.toString())),
        body: _buildProductsLayout(widget.products));
  }

  ListView _buildProductsLayout(List<dynamic> products) {
//    var productCards = [
//      products.map((item) {
//        return ProductCard(
//          imageUrl: item['thumbnail'],
//          name: item['name'],
//          store: item['store'],
//          affiliateLink: item['affiliate_link'],
//          favoriteCount: item['favorites_count'],
//        );
//      })
//    ];

    var product = products[0];

    return ListView(
      children: [
        ProductCard(
          imageUrl: product['thumbnail'],
          name: product['name'],
          store: product['store'],
          affiliateLink: product['affiliate_link'],
          favoriteCount: product['favorites_count'],
        )
      ],
    );

//    return Column(
//      mainAxisSize: MainAxisSize.min,
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: [
//        Icon(icon, color: color),
//        Container(
//          margin: const EdgeInsets.only(top: 8),
//          child: Text(
//            label,
//            style: TextStyle(
//              fontSize: 12,
//              fontWeight: FontWeight.w400,
//              color: color,
//            ),
//          ),
//        ),
//      ],
//    );
  }
}
