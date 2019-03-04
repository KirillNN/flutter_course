import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double price;

  ProductPage(this.title, this.imageUrl, this.description, this.price);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back buttom pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '\$${price.toString()}',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        description,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        softWrap: true,
                      )),
                ),
                SizedBox(
                  width: 8.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
