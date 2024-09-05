import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/Auth/domain/Repos/user_repo.dart';
import 'package:fashions/features/auth/domain/entities/sign_up_entity.dart';
import 'package:fashions/features/auth/domain/entities/user_data.dart';

class SignUpUseCase {
  final UserRepo userRepo;

  SignUpUseCase({required this.userRepo});

  Future<Either<Failure, UserData>> call(SignUpEntity signUpEntity) async {
    return await userRepo.signUp(signUpEntity);
  }
}
