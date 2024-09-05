import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/Auth/domain/Repos/user_repo.dart';
import 'package:fashions/features/auth/data/data_source/user_remote_data_source.dart';
import 'package:fashions/features/auth/domain/entities/login_entity.dart';
import 'package:fashions/features/auth/domain/entities/sign_up_entity.dart';
import 'package:fashions/features/auth/domain/entities/user_data.dart';

class UserRepoImpl implements UserRepo {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepoImpl({required this.userRemoteDataSource});

  @override
  Future<Either<Failure, UserData>> login(LoginEntity loginEntity) async {
    try {
      final userData = await userRemoteDataSource.login(loginEntity);
      return Right(userData);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserData>> signUp(SignUpEntity signUpEntity) async {
    try {
      final userData = await userRemoteDataSource.signUp(signUpEntity);
      return Right(userData);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
