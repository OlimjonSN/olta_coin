import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: prBackgroundColor,
          child: LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.65,
                    child: Image.asset('images/olta.png'),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.1,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(
                      'Fastest chain wallet, anytime, anywhere Your Asset, Your Control',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
