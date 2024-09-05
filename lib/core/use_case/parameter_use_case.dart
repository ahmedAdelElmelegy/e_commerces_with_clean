import 'package:fashions/core/error/failor.dart';
import 'package:dartz/dartz.dart';

abstract class ParameterUseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param parm);
}
