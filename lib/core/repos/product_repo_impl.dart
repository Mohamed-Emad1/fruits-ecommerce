import 'package:dartz/dartz.dart';
import 'package:fruitshup/core/entities/product_entity.dart';
import 'package:fruitshup/core/errors/failure.dart';
import 'package:fruitshup/core/models/product_model.dart';
import 'package:fruitshup/core/repos/product_repo.dart';
import 'package:fruitshup/core/services/database_service.dart';
import 'package:fruitshup/core/utils/backend_endpoints.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var result = await databaseService.getData(
          path: BackendEndpoints.getProducts) as List<Map<String, dynamic>>;
      List<ProductModel> products =
          result.map((e) => ProductModel.fromJson(e)).toList();
      List<ProductEntity> entities = products.map((e) => e.toEntity()).toList();
      return Right(entities);
    } on Exception catch (e) {
      return const Left(ServerFailure("Failed to get products"));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }
}
