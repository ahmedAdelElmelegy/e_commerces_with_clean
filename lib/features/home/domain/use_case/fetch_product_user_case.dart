import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/core/use_case/no_parameter_use_case.dart';
import 'package:fashions/features/home/domain/Repo/home_repo.dart';
import 'package:fashions/features/home/domain/entities/products/product_entity.dart';

class FetchProductUserCase extends NoParameterUseCase<List<ProductEntity>> {
 final HomeRepo homeRepo;

  FetchProductUserCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await homeRepo.fetchProdcuts();
  }
}
