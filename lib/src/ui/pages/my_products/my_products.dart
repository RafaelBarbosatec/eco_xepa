import 'package:eco_xepa/src/ui/pages/my_products/widgets/my_product_item.dart';
import 'package:flutter/material.dart';

class MyProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus produtos'),
      ),
      body: ListView(
        children: [
          MyProductItem(),
          MyProductItem(),
          MyProductItem(),
          MyProductItem(),
        ],
      ),
    );
  }
}
