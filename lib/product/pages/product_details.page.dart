import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          Text(title),
          ElevatedButton(
            child: const Text('Go Back'),
            onPressed: () {
              context.router.pop(true);
            },
          ),
        ],
      ),
    );
  }
}
