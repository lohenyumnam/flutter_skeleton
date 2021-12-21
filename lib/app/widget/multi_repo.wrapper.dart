import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/product/data/data.dart';
import 'package:flutter_skeleton/service/chopper_client.dart';

import '../../service/service.dart';

class MultiRepoWrapper extends StatelessWidget {
  const MultiRepoWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final apiService = chopper.getService<APIService>();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ProductRepo>(
          create: (context) => ProductRepo(service: apiService),
        ),
      ],
      child: child,
    );
  }
}
