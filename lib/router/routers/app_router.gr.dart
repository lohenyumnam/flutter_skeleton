// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/widgets.dart' as _i6;

import '../../product/product.dart' as _i3;
import '../../profile/profile.dart' as _i4;
import '../../root/root.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    RootTabRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RootTabPage());
    },
    ProductTabRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileTabRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProductRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProductPage());
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return _i2.MaterialPageX<bool>(
          routeData: routeData,
          child: _i3.ProductDetailsPage(key: args.key, title: args.title));
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(RootTabRoute.name, path: '/', children: [
          _i2.RouteConfig(ProductTabRoute.name,
              path: 'productTab',
              parent: RootTabRoute.name,
              children: [
                _i2.RouteConfig(ProductRoute.name,
                    path: '', parent: ProductTabRoute.name),
                _i2.RouteConfig(ProductDetailsRoute.name,
                    path: 'product-details-page', parent: ProductTabRoute.name)
              ]),
          _i2.RouteConfig(ProfileTabRoute.name,
              path: 'profileTab',
              parent: RootTabRoute.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileTabRoute.name),
                _i2.RouteConfig(ProductDetailsRoute.name,
                    path: 'product-details-page', parent: ProfileTabRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.RootTabPage]
class RootTabRoute extends _i2.PageRouteInfo<void> {
  const RootTabRoute({List<_i2.PageRouteInfo>? children})
      : super(RootTabRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootTabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProductTabRoute extends _i2.PageRouteInfo<void> {
  const ProductTabRoute({List<_i2.PageRouteInfo>? children})
      : super(ProductTabRoute.name,
            path: 'productTab', initialChildren: children);

  static const String name = 'ProductTabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileTabRoute extends _i2.PageRouteInfo<void> {
  const ProfileTabRoute({List<_i2.PageRouteInfo>? children})
      : super(ProfileTabRoute.name,
            path: 'profileTab', initialChildren: children);

  static const String name = 'ProfileTabRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i2.PageRouteInfo<void> {
  const ProductRoute() : super(ProductRoute.name, path: '');

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i3.ProductDetailsPage]
class ProductDetailsRoute extends _i2.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({_i6.Key? key, required String title})
      : super(ProductDetailsRoute.name,
            path: 'product-details-page',
            args: ProductDetailsRouteArgs(key: key, title: title));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.title});

  final _i6.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
