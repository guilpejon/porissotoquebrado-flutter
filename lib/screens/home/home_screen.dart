import 'package:flutter/material.dart';
import 'package:porissotoquebrado/common/custom_drawer/custom_drawer.dart';
import 'package:porissotoquebrado/screens/home/widgets/search_dialog.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    _openSearch(String currentSearch) async {
      final String search = await showDialog(
          context: context,
          builder: (context) => SearchDialog(currentSearch: currentSearch));
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.asset(
          'images/pitq.png',
          scale: 3,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              _openSearch("");
            },
          )
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
