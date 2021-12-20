import "dart:async";
import 'package:chopper/chopper.dart';

import '../../product.model.dart';

// This is necessary for the generator to work.
part 'api_service.chopper.dart';

@ChopperApi()
abstract class APIService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static APIService create({ChopperClient? client}) => _$APIService(client);

  // @Post(path: '/upload/force-update-status')
  // Future<Response<OpenStatusModel>> toggleOpenStatus(
  //   @Body() Map<String, dynamic> body,
  // );
  @Get(path: '/products')
  Future<Response<List<ProductModel>>> getProducts();
}
