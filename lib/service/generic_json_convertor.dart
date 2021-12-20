import 'dart:convert';
import 'package:chopper/chopper.dart';


class GenericJsonConvertor extends JsonConverter {
  /// This Class Decode the json respond to dart type.
  /// all you have to do is Call the Class while creating your [ChopperClient]
  /// and pass it to [converter] params.
  ///
  ///  Note: don't forget to add the type converter `Map<Type, Function>` as shown in the example
  ///
  /// ### Example
  ///
  /// ``` dart
  /// GenericConvertor({
  /// ModelType: (jsonData) => ModelType.fromJson(jsonData),
  /// ProductModel: (jsonData) => ProductModel.fromJson(jsonData),
  /// })
  /// ```
  const GenericJsonConvertor(this.typeToJsonFactoryMap);

  final Map<Type, Function> typeToJsonFactoryMap;

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(
        response.body,
        typeToJsonFactoryMap[InnerType]!,
      ),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);
    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
