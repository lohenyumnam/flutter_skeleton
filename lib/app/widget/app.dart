import 'package:flutter/material.dart';
import 'package:flutter_skeleton/app/widget/multi_bloc.wrapper.dart';
import 'package:flutter_skeleton/app/widget/multi_repo.wrapper.dart';
import 'package:flutter_skeleton/product/pages/pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MultiRepoWrapper(
        child: MultiBlocWrapper(
          child: ProductPage(),
        ),
      ),
    );
  }
}
