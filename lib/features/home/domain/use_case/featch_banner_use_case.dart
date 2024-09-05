import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/core/use_case/no_parameter_use_case.dart';
import 'package:fashions/features/home/domain/Repo/home_repo.dart';
import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';

class FeatchBannerUseCase extends NoParameterUseCase<List<BannerEntity>> {
  final HomeRepo homeRepo;

  FeatchBannerUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BannerEntity>>> call() async {
    return await homeRepo.feachbanners();
  }
}
