import 'package:flutter/material.dart';
import 'package:flutter_full_structure/core/secrets/app_secrets.dart';
import 'package:flutter_full_structure/core/theme/theme.dart';
import 'package:flutter_full_structure/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
 // ignore: unused_local_variable
 final supabase= await Supabase.initialize(url:AppSecrets.supabaseurl,  anonKey:AppSecrets.supabaseAnnonKey);
  runApp(const MyApp());
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

