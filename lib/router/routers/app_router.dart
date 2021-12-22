import 'package:auto_route/auto_route.dart';
import 'package:flutter_skeleton/product/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ProductPage, initial: true),
    AutoRoute<bool>(page: ProductDetailsPage),
  ],
)
class $AppRouter {}
