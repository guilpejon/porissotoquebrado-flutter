import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'product_index_screen.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
//  @override
//  void initState() {
//    super.initState();
//    getProductData();
//  }

//  void getProductData() async {
//    Navigator.push(
//      context,
//      MaterialPageRoute(
//        settings: RouteSettings(name: 'teste'),
//        builder: (context) {
//          return ProductIndexScreen();
//        },
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
//      body: Center(
//        child: SpinKitDoubleBounce(
//          color: Colors.black,
//          size: 100.0,
//        ),
//      child: Padding(
//        padding: const EdgeInsets.fromLTRB(50, 50, 50, 25),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.network(
                      'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBWlU9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0d8d6e4511a66d02c8ee3e90ed9374d163808508/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/0-Feminino-halloween-carnaval-fantasia-engra-ado-flor-cosplay-sapatos-super-mario-cannibal-flor-piranha-deslizamento-em.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 25),
                child: FlatButton(
                  onPressed: () {},
                  child: Image.network(
                      'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBWlU9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0d8d6e4511a66d02c8ee3e90ed9374d163808508/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/0-Feminino-halloween-carnaval-fantasia-engra-ado-flor-cosplay-sapatos-super-mario-cannibal-flor-piranha-deslizamento-em.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
