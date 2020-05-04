import 'package:flutter/material.dart';
import 'components/product_card.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PrimaryColor = const Color(0xfffa8160);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PorIssoToQuebrado',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PorIssoToQuebrado'),
          backgroundColor: PrimaryColor,
        ),
        body: ListView(
          children: [
            ProductCard(
              imageUrl:
                  'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBWlU9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0d8d6e4511a66d02c8ee3e90ed9374d163808508/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/0-Feminino-halloween-carnaval-fantasia-engra-ado-flor-cosplay-sapatos-super-mario-cannibal-flor-piranha-deslizamento-em.jpg',
              title: 'Pantufas Piranha Mario',
              store: 'Aliexpress',
              favoriteCount: 23,
            ),
            ProductCard(
              imageUrl:
                  'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBYkk9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--62cab8e2a7870d700e5121398b2bacb4bd7be4c5/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/3-3d-simula-o-alimentos-forma-travesseiro-de-pel-cia-criativo-frango-salsicha-pel-cia-brinquedos-almofada.jpg',
              title: 'Almofada Formato de Carne',
              store: 'Aliexpress',
              favoriteCount: 47,
            ),
            ProductCard(
              imageUrl:
                  'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBYUk9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e785f4ab0720e62cf6aa02570f8ad2a3d143f9e6/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/3-Nova-planta-hidrop-nica-vasos-vaso-de-flores-do-vintage-vaso-transparente-quadro-de-madeira-mesa.jpg',
              title: 'Vaso de Planta Hidropônico',
              store: 'Aliexpress',
              favoriteCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.tealAccent,
            Colors.redAccent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Text(
            'Gradient AppBar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
    ),
  );
}
