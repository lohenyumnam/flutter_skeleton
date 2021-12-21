import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/product/logic/cubit/product_cubit.dart';

class ProductLoaderView extends StatefulWidget {
  const ProductLoaderView({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<ProductLoaderView> createState() => _ProductLoaderViewState();
}

class _ProductLoaderViewState extends State<ProductLoaderView> {
  @override
  void initState() {
    super.initState();

    context.read<ProductCubit>().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    final productCubit = context.watch<ProductCubit>();
    final productState = productCubit.state;
    final status = productState.status;

    switch (status) {
      case ProductStatus.initial:
        return const Center(child: Icon(Icons.remember_me_rounded));
      case ProductStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case ProductStatus.loaded:
        return widget.child;

      case ProductStatus.error:
        return const Center(child: Icon(Icons.error_outline_rounded));
    }
  }
}
