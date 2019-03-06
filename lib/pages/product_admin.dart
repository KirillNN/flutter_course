import 'package:flutter/material.dart';

import '../pages/product_create.dart';
import '../pages/product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct, this.deleteProduct);

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        AppBar(
          automaticallyImplyLeading: false,
          title: Text('Choose'),
        ),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('All Products'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/products');
          },
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: _buildSideDrawer(context),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: 'Create Products',
              icon: Icon(Icons.create),
            ),
            Tab(
              text: 'My Products',
              icon: Icon(Icons.list),
            )
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ProductCreatePage(addProduct),
          ProductListPage(),
        ]),
      ),
    );
  }
}
