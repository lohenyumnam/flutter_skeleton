// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../product/pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    ProductRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ProductPage());
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return _i2.MaterialPageX<bool>(
          routeData: routeData,
          child: _i1.ProductDetailsPage(key: args.key, title: args.title));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(ProductRoute.name, path: '/'),
        _i2.RouteConfig(ProductDetailsRoute.name, path: '/product-details-page')
      ];
}

/// generated route for
/// [_i1.ProductPage]
class ProductRoute extends _i2.PageRouteInfo<void> {
  const ProductRoute() : super(ProductRoute.name, path: '/');

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i1.ProductDetailsPage]
class ProductDetailsRoute extends _i2.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({_i3.Key? key, required String title})
      : super(ProductDetailsRoute.name,
            path: '/product-details-page',
            args: ProductDetailsRouteArgs(key: key, title: title));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.title});

  final _i3.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, title: $title}';
  }
}
