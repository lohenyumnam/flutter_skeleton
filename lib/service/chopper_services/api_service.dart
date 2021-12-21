import "dart:async";
import 'package:chopper/chopper.dart';

import '../../product/data/model/product.model.dart';

// This is necessary for the generator to work.
part 'api_service.chopper.dart';

@ChopperApi()
abstract class APIService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static APIService create({ChopperClient? client}) => _$APIService(client);

  @Get(path: '/products')
  Future<Response<List<ProductModel>>> getProducts();

  @Get(path: '/products/category/{name}')
  Future<Response<List<ProductModel>>> getProductsByCategory(
    @Path('name') String categoryName,
  );
}
