import 'package:flutter/material.dart';
import 'package:porissotoquebrado/common/custom_drawer/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.asset(
          'images/pitq.png',
          scale: 3,
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
