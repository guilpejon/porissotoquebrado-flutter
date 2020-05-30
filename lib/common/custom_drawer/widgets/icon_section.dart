import 'package:flutter/material.dart';
import 'package:porissotoquebrado/blocs/drawer_bloc.dart';
import 'package:provider/provider.dart';

import 'icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DrawerBloc _drawerBloc = Provider.of<DrawerBloc>(context);

    void _setPage(int page) {
      Navigator.of(context).pop();
      _drawerBloc.setPage(page);
    }

    return StreamBuilder<int>(
      stream: _drawerBloc.outPage,
      builder: (context, snapshot) {
        return Column(
          children: <Widget>[
            IconTile(
              label: 'Produtos',
              iconData: Icons.home,
              onTap: () {
                _setPage(0);
              },
              highlighted: snapshot.data == 0,
            ),
            IconTile(
              label: 'Categorias',
              iconData: Icons.list,
              onTap: () {
                _setPage(1);
              },
              highlighted: snapshot.data == 1,
            ),
          ],
        );
      },
    );
  }
}
