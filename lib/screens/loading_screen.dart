import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:porissotoquebrado/services/api.dart';
import 'product_index_screen.dart';

const apiKey = '';
const apiUrl = 'https://api.porissotoquebrado.com.br/api/v1/produtos';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    fetchDataAndRedirect();
  }

  Future<dynamic> getProductData() {
    Api api = Api(apiUrl);

    var productsData = api.getData();

    return productsData;
  }

  void fetchDataAndRedirect() async {
    var products = await getProductData();

    if (products == null) {
      // TODO: add error handling to end users
      throw new Exception("Error retrieving products list!");
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ProductIndexScreen(products: products);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final PrimaryColor = const Color(0xfffa8160);

    return Scaffold(
      appBar: AppBar(
        title: Text('PorIssoToQuebrado'),
        backgroundColor: PrimaryColor,
      ),
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.grey,
          size: 100.0,
        ),
      ),
    );
  }
}
