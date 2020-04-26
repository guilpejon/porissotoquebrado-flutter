import 'package:flutter/material.dart';
import 'package:porissotoquebrado/screens/product_index_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PorIssoToQuebrado',
      theme: ThemeData.light(),
      home: ProductIndexScreen(),
    );
  }
}
