import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    });
    return Scaffold(
      backgroundColor: prBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('images/olta.png')],
      )),
    );
  }
}
