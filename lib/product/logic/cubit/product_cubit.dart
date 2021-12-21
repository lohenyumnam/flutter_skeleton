import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_skeleton/core/core.dart';
import 'package:flutter_skeleton/product/data/data.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.repo})
      : super(const ProductState(status: ProductStatus.initial));

  final ProductRepo repo;

  Future<void> getProduct() async {
    if (_isBusy) return;

    emit(const ProductState(status: ProductStatus.loading));

    try {
      final product = await repo.getProducts();
      emit(ProductState(
        status: ProductStatus.loaded,
        products: product ?? [],
      ));
    } on ErrorResponseException catch (error) {
      emit(ProductState(
        status: ProductStatus.error,
        errorMessage: error.message,
      ));
    } catch (e) {
      final errorMessage = e.toString();
      emit(ProductState(
        status: ProductStatus.error,
        errorMessage: errorMessage,
      ));
    }
  }

  bool get _isBusy => state.status == ProductStatus.loading;
}
