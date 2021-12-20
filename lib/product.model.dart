import 'package:json_annotation/json_annotation.dart';

part 'product.model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  /// A necessary factory constructor for creating a new ProductModel instance
  /// from a map. Pass the map to the generated `_$ProductModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, ProductModel.
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ProductModelToJson`.
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  final double rate;
  final int count;

  /// A necessary factory constructor for creating a new Rating instance
  /// from a map. Pass the map to the generated `_$RatingFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Rating.
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$RatingToJson`.
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}
