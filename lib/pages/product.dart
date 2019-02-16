import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('On the Product Page')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'BACK',
              ),
            ),
          )
        ],
      ),
    );
  }
}
