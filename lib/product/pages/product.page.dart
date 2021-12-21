import 'package:flutter/material.dart';

import '../product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: const ProductLoaderView(child: ProductBody()),
    );
  }
}
