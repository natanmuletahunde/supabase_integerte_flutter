import 'package:flutter_full_structure/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType,Params> {
  Future<Either<Failure,SuccessType>> call(Params  params);
}
 
