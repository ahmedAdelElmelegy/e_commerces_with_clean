import 'package:dartz/dartz.dart';
import 'package:fashions/core/error/failor.dart';
import 'package:fashions/features/auth/domain/entities/login_entity.dart';
import 'package:fashions/features/auth/domain/entities/sign_up_entity.dart';
import 'package:fashions/features/auth/domain/entities/user_data.dart';

abstract class UserRepo {
  Future<Either<Failure, UserData>> login(LoginEntity loginEntity);
  Future<Either<Failure, UserData>> signUp(SignUpEntity signUpEntity);
}
