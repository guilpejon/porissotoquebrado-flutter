import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget productTitle = Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Widget productImage = Container(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: _launchURL,
        child: Image.network(
          'https://porissotoquebrado.com.br/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBWlU9IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0d8d6e4511a66d02c8ee3e90ed9374d163808508/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9UY21WemFYcGxYM1J2WDJacGJHeGJCMmtDOUFGcEF2UUIiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--a839b8f2c2a6fa0a5a6889d1a5f8843d5fb665fd/0-Feminino-halloween-carnaval-fantasia-engra-ado-flor-cosplay-sapatos-super-mario-cannibal-flor-piranha-deslizamento-em.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return Container(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
      child: Column(
        children: [
          productImage,
          productTitle,
          //buttonSection,
          //descriptionSection
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
