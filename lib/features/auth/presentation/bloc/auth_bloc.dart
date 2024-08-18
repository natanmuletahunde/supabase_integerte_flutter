
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_full_structure/features/auth/domain/usecases/user_sign_up.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;
  AuthBloc({
    required UserSignUp userSignUp,
  }) :_userSignUp=userSignUp
  , super(AuthInitial()) {
    on<AuthSignUp>((event, emit) => {});
  }
}
