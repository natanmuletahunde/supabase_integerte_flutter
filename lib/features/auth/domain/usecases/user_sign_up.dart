import 'package:flutter_full_structure/core/error/failures.dart';
import 'package:flutter_full_structure/core/usecase/usecase.dart';
import 'package:flutter_full_structure/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
class UserSignUp  implements UseCase<String , UserSignUpParams> {
  final AuthRepository authRepository;
  const UserSignUp(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signUpwithEmailPassword(
      name: params.name,
     email: params.email,
      password: params.password);
    throw UnimplementedError();
  }
}
class  UserSignUpParams{
      final String email;
      final String password;
      final String name;
      UserSignUpParams({
        required this.email,
        required this.password,
        required this.name,
      });
    }
  
