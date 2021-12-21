// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$APIService extends APIService {
  _$APIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = APIService;

  @override
  Future<Response<List<ProductModel>>> getProducts() {
    final $url = '/products';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductModel>, ProductModel>($request);
  }

  @override
  Future<Response<List<ProductModel>>> getProductsByCategory(
      String categoryName) {
    final $url = '/products/category/${categoryName}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductModel>, ProductModel>($request);
  }
}
