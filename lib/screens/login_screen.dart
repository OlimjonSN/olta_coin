import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';
import 'package:olta_coin/widget/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: constraints.maxHeight * 0.66,
                    child: Column(
                      children: [
                        Image.asset('images/olta.png'),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          height: constraints.maxHeight * 0.1,
                          // width: MediaQuery.of(context).size.width - 40,
                          child: Text(
                            'Fastest chain wallet, anytime, anywhere Your Asset, Your Control',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: MainButton(
                          title: 'Sign In',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: MainButton(
                          title: 'Create Account',
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
