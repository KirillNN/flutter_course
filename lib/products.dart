import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.push<bool>(
                          context,
).then((bool value) {
                        if (value) deleteProduct(index);
                      }),
                  child: Text('Details'))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No Products found, please add some'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Product Widget] build()');
    return _buildProductList();
  }
}
