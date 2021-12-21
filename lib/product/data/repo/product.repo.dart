import 'package:flutter_skeleton/core/error/error.dart';
import 'package:flutter_skeleton/product/data/model/product.model.dart';

import '../../../service/chopper_services/api_service.dart';

class ProductRepo {
  ProductRepo({required this.service});

  final APIService service;

  Future<List<ProductModel>?> getProducts() async {
    final response = await service.getProducts();

    if (!response.isSuccessful) {
      final error = response.error;
      final statusCode = response.statusCode.toString();

      throw ErrorResponseException(
        statusCode: statusCode,
        message: error.toString(),
      );
    }

    final products = response.body;
    return products;
  }
}
