import 'package:bloc/bloc.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/repos/product_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productRepo) : super(ProductInitial());
  final ProductRepo _productRepo;
  int productsLength = 0;

  Future<void> getProducts() async {
    emit(ProductLoading());
    final result = await _productRepo.getProducts();
    result.fold((failure) => emit(ProductFailure(errMessgae: failure.message)),
        (list) => emit(ProductSuccess(products: list)));
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductLoading());
    final result = await _productRepo.getBestSellingProducts();
    result.fold((failure) => emit(ProductFailure(errMessgae: failure.message)),
        (list) {
          productsLength = list.length;
      emit(
        ProductSuccess(products: list),
      );
    });
  }
}
