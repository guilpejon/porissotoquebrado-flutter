import 'package:flutter/material.dart';
import 'package:porissotoquebrado/screens/loading_screen.dart';
import 'components/product_card.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PorIssoToQuebrado',
      home: LoadingScreen(),
    );
  }
}
