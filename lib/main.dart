import 'package:flutter/material.dart';
import 'package:porissotoquebrado/blocs/drawer_bloc.dart';
import 'package:porissotoquebrado/screens/base/base_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DrawerBloc>(
          create: (_) => DrawerBloc(),
          dispose: (context, value) => value.dispose(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 250, 129, 96),
        ),
        debugShowCheckedModeBanner: false,
        home: BaseScreen(),
      ),
    );
  }
}
