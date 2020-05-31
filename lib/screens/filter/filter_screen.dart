import 'package:flutter/material.dart';
import 'package:porissotoquebrado/screens/filter/widgets/section_title.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Filtrar busca',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                SectionTitle(title: 'Ordenar por'),
                SectionTitle(title: 'Preço (R\$)'),
                SectionTitle(title: 'Loja'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
