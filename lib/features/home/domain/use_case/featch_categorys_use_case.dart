import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/core/use_case/no_parameter_use_case.dart';
import 'package:fashions/features/home/domain/Repo/home_repo.dart';
import 'package:fashions/features/home/domain/entities/category/category_entity.dart';

class FeatchCategorysUseCase extends NoParameterUseCase<List<CategoryEntity>> {
  final HomeRepo homeRepo;

  FeatchCategorysUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<CategoryEntity>>> call() async {
    return await homeRepo.feachCategorys();
  }
}
