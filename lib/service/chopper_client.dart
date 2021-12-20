import 'package:chopper/chopper.dart';
import 'package:flutter_skeleton/product.model.dart';
import 'chopper_services/api_service.dart';
import 'generic_json_convertor.dart';

final chopper = ChopperClient(
    baseUrl: "https://fakestoreapi.com/",
    services: [
      // Create and pass an instance of the generated service to the client
      APIService.create(),
    ],
    converter: GenericJsonConvertor({
      ProductModel: (jsonDate) => ProductModel.fromJson(jsonDate),
    }),
    errorConverter: const JsonConverter(),
    interceptors: [
      // (Request request) async {
      //   /// This Interceptor will be called for every request
      //   /// and we will add the token to the header of the request if the user is logged in
      //   final firebaseJWT = await getTokenId();
      //   final oldHeader = request.headers;
      //   final r = request.copyWith(headers: {
      //     ...oldHeader,
      //     if (firebaseJWT != null) "Authorization": "Bearer $firebaseJWT"
      //   });

      //   return r;
      // },
      HttpLoggingInterceptor(),
    ]);
