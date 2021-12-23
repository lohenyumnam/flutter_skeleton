import 'package:auto_route/auto_route.dart';
import 'package:flutter_skeleton/product/product.dart';
import 'package:flutter_skeleton/profile/profile.dart';
import 'package:flutter_skeleton/root/root.dart';

const rootTabRoute = AutoRoute(
  page: RootTabPage,
  initial: true,
  children: [
    AutoRoute(
      page: EmptyRouterPage,
      name: 'ProductTabRoute',
      path: "productTab",
      children: [
        AutoRoute(page: ProductPage, path: ''),
        AutoRoute<bool>(page: ProductDetailsPage),
      ],
    ),
    AutoRoute(
      page: EmptyRouterPage,
      name: 'ProfileTabRoute',
      path: "profileTab",
      children: [
        AutoRoute(page: ProfilePage, path: ''),
        AutoRoute<bool>(page: ProductDetailsPage),
      ],
    ),
  ],
);
