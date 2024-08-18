import 'package:flutter_full_structure/core/error/exceptions.dart';
import 'package:flutter_full_structure/core/error/failures.dart';
import 'package:flutter_full_structure/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_full_structure/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, String>> loginwithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginwithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpwithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userId = await remoteDataSource.signUpwithEmailPassword(
          email: email,
           password: password,
            name: name);
        return right(userId);
    } on ServerException catch (e) {
        return left(Failure(e.message));    
    }

    throw UnimplementedError();
  }
}
