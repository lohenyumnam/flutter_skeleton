part of 'product_cubit.dart';

enum ProductStatus {
  initial,
  loading,
  loaded,
  error,
}

class ProductState extends Equatable {
  const ProductState({
    required this.status,
    this.products = const [],
    this.errorMessage,
  });

  final ProductStatus status;
  final List<ProductModel> products;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, products, errorMessage];
}
