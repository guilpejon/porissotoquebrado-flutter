import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProductIndexScreen extends StatefulWidget {
  @override
  _ProductIndexScreenState createState() => _ProductIndexScreenState();
}

class _ProductIndexScreenState extends State<ProductIndexScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
