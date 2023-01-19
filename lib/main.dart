import 'package:flutter/material.dart';
import 'package:olta_coin/screens/login_screen.dart';
import 'package:olta_coin/screens/register_screen.dart';
import 'package:olta_coin/screens/signIn_screen.dart';
import 'package:olta_coin/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oltain Crypto',
      theme: ThemeData(primaryColorDark: Colors.black),
      initialRoute: 'signIn',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'login': (context) => const LoginScreen(),
        'signIn': (context) => const SignInScreen(),
        'register': (context) => const RegisterScreen(),
      },
    );
  }
}
