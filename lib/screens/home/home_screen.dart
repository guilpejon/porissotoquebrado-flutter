import 'package:flutter/material.dart';
import 'package:porissotoquebrado/blocs/home_bloc.dart';
import 'package:porissotoquebrado/common/custom_drawer/custom_drawer.dart';
import 'package:porissotoquebrado/screens/home/widgets/search_dialog.dart';
import 'package:porissotoquebrado/screens/home/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc _homeBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final HomeBloc homeBloc = Provider.of<HomeBloc>(context);
    if (homeBloc != _homeBloc) _homeBloc = homeBloc;
  }

  @override
  Widget build(BuildContext context) {
    _openSearch(String currentSearch) async {
      final String search = await showDialog(
          context: context,
          builder: (context) => SearchDialog(currentSearch: currentSearch));
      if (search != null) _homeBloc.setSearch(search);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: StreamBuilder<String>(
          stream: _homeBloc.outSearch,
          initialData: '',
          builder: (context, snapshot) {
            if (snapshot.data.isEmpty) {
              return Image.asset(
                'images/pitq.png',
                scale: 3,
              );
            } else
              return GestureDetector(
                onTap: () => _openSearch(snapshot.data),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      child: Text(
                        snapshot.data,
                        style: TextStyle(color: Colors.white),
                      ),
                      width: constraints.biggest.width,
                    );
                  },
                ),
              );
          },
        ),
        actions: <Widget>[
          StreamBuilder<String>(
            stream: _homeBloc.outSearch,
            initialData: '',
            builder: (context, snapshot) {
              if (snapshot.data.isEmpty)
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _openSearch("");
                  },
                );
              else
                return IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    _homeBloc.setSearch("");
                  },
                );
            },
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          TopBar(),
        ],
      ),
    );
  }
}
