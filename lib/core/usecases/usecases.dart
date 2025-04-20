import 'package:dweather/core/utils/utlis_const.dart';
import 'package:dartz/dartz.dart';

import '../erros/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
