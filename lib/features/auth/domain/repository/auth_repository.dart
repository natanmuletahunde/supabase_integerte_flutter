import 'package:flutter_full_structure/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';
abstract interface class AuthRepository {
Future< Either<Failure, String>> signUpwithEmailPassword({
  required String name,
  required String email,
  required String password,
});
Future< Either<Failure, String>> loginwithEmailPassword({
  required String email,
  required String password,
});
}