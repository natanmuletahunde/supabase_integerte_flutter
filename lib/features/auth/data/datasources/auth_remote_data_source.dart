import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class  AuthRemoteDataSource{
  Future<String> signUpwithEmailPassword({
    required String email,
    required String password,
    required String name,

  });
   Future<String> loginwithEmailPassword({
    required String email,
    required String password,

  });
}
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
    final SupabaseClient supabaseClient;
    AuthRemoteDataSourceImpl(this.supabaseClient);
  @override
  Future<String> loginwithEmailPassword({required String email, required String password,}) {
    // TODO: implement loginwithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signUpwithEmailPassword({required String email, required String password, required String name,}) {
    // TODO: implement signUpwithEmailPassword
    throw UnimplementedError();
  }

}