import 'package:flutter/material.dart';
import 'package:flutter_skeleton/app/widget/multi_bloc.wrapper.dart';
import 'package:flutter_skeleton/app/widget/multi_repo.wrapper.dart';
import 'package:flutter_skeleton/router/router.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepoWrapper(
      child: MultiBlocWrapper(
        child: MaterialApp.router(
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ),
      ),
    );
  }
}
