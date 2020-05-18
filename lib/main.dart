import 'package:flutter/material.dart';
import 'package:porissotoquebrado/screens/home_screen.dart';
import 'package:porissotoquebrado/screens/loading_screen.dart';
import 'components/product_card.dart';
import 'package:porissotoquebrado/services/api.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
//  Api api = Api("https://api.porissotoquebrado.com.br/api/v1/produtos");
//  api.getData();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PorIssoToQuebrado',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 250, 129, 96)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
//        home: LoadingScreen(),);
  }
}
