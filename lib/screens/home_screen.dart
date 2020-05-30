import 'package:flutter/material.dart';
import 'package:porissotoquebrado/tabs/category_tab.dart';
import 'package:porissotoquebrado/tabs/home_tab.dart';
import 'package:porissotoquebrado/common/custom_drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          //  drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          //drawer: CustomDrawer(_pageController),
          body: CategoryTab(),
        ),
      ],
    );
  }
}
