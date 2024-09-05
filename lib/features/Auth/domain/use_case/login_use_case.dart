import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/Auth/domain/Repos/user_repo.dart';
import 'package:fashions/features/auth/domain/entities/login_entity.dart';
import 'package:fashions/features/auth/domain/entities/user_data.dart';

class LoginUseCase {
  final UserRepo userRepo;

  LoginUseCase({required this.userRepo});

  Future<Either<Failure, UserData>> call(LoginEntity loginEntity) async {
    return await userRepo.login(loginEntity);
  }
}
