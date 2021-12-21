import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/product/logic/cubit/product_cubit.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productCubit = context.watch<ProductCubit>();
    final productState = productCubit.state;
    final products = productState.products;

    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProductCubit>().getProduct();
      },
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: SizedBox(
              child: Image.network(product.image),
              width: MediaQuery.of(context).size.width * 0.25,
              height: 100,
            ),
            title: Text(product.title),
            subtitle: Text(product.description),
          );
        },
      ),
    );
  }
}
