import 'package:flutter/material.dart';
import 'package:porissotoquebrado/models/filter.dart';
import 'package:porissotoquebrado/screens/filter/widgets/animated_button.dart';
import 'package:porissotoquebrado/screens/filter/widgets/order_by_field.dart';
import 'package:porissotoquebrado/screens/filter/widgets/price_range_field.dart';
import 'package:porissotoquebrado/screens/filter/widgets/section_title.dart';
import 'package:porissotoquebrado/screens/filter/widgets/vendor_type_field.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();
  Filter _filter = Filter(
    maxPrice: 100,
    minPrice: 10,
    vendorName: VENDOR_NAME_MAGALU,
    orderBy: OrderBy.DATE,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              controller: _scrollController,
              padding: EdgeInsets.all(16),
              children: <Widget>[
                SectionTitle(title: 'Ordenar por'),
                OrderByField(
                    initialValue: _filter.orderBy,
                    onSaved: (v) {
                      _filter.orderBy = v;
                    }),
                SectionTitle(title: 'Preço (R\$)'),
                PriceRangeField(
                  filter: _filter,
                ),
                SectionTitle(title: 'Lojas'),
                VendorTypeField(
                  initialValue: _filter.vendorName,
                  onSaved: (v) {
                    _filter.vendorName = v;
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          AnimatedButton(
            scrollController: _scrollController,
            onTap: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                if (_filter.maxPrice != null && _filter.minPrice != null) {
                  if (_filter.minPrice > _filter.maxPrice) {
                    _scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                        content: const Text('Faixa de preço inválida'),
                        backgroundColor: Colors.orange,
                      ),
                    );
                    return;
                  }
                }
                // SALVAR TUDO E PESQUISAR PRODUTOS
              }
            },
          ),
        ],
      ),
    );
  }
}
