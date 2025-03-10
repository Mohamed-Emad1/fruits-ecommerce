import 'package:dartz/dartz.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/errors/failure.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();

  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}
