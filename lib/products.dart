import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget _buildProductList() {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text(
              'No Products found, please add some',
            ),
          );
    // Widget productCard;
    // if (products.length > 0) {
    //   productCard = ListView.builder(
    //     itemBuilder: _buildProductItem,
    //     itemCount: products.length,
    //   );
    // } else {
    //   productCard = Center(
    //     child: Text(
    //       'No Products found, please add some',
    //     ),
    //   );
    // }
    // return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
