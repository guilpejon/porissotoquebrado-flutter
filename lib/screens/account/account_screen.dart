import 'package:flutter/material.dart';
import 'package:porissotoquebrado/common/custom_drawer/custom_drawer.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Text(
          'Minha Conta',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('EDITAR'),
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 180,
            decoration: BoxDecoration(color: primaryColor),
            child: Text('Guil',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            title: Text(
              'Meus favoritos',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Meus favoritos',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
