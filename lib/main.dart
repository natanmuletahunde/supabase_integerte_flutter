import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_full_structure/core/secrets/app_secrets.dart';
import 'package:flutter_full_structure/core/theme/theme.dart';
import 'package:flutter_full_structure/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_full_structure/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter_full_structure/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_full_structure/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'features/auth/data/datasources/auth_remote_data_source.dart';

void main() async {
 // ignore: unused_local_variable
 WidgetsFlutterBinding.ensureInitialized();
 final supabase= await Supabase.initialize(url:AppSecrets.supabaseurl,  anonKey:AppSecrets.supabaseAnnonKey);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
  create: (_) => AuthBloc(
    userSignUp:  UserSignUp(
      AuthRepositoryImpl(
        AuthRemoteDataSource(supabase.client),
        remoteDataSource: null,
      ),
    ),
  ),
)

    ],
    child: const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}

