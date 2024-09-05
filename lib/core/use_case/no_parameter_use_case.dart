  import 'package:dartz/dartz.dart';
  import 'package:fashions/core/error/failor.dart';

  abstract class NoParameterUseCase<Type> {
    Future<Either<Failure, Type>> call();
  }
