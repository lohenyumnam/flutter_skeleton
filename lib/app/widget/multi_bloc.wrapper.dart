import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/product/data/data.dart';
import 'package:flutter_skeleton/product/logic/cubit/product_cubit.dart';

class MultiBlocWrapper extends StatelessWidget {
  const MultiBlocWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final productRepo = context.read<ProductRepo>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCubit(repo: productRepo),
        )
      ],
      child: child,
    );
  }
}
