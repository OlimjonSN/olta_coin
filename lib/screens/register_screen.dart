import 'package:flutter/material.dart';

import '../models/add_color.dart';
import '../widget/main_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _retypedController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: prBackgroundColor,
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.asset('images/olta.png'),
                  ),
                  Container(
                    // padding: const EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width - 30,
                          child: TextFormField(
                            controller: _usernameController,
                            style: TextStyle(color: white),
                            decoration: InputDecoration(
                                hintText: 'Enter username',
                                hintStyle: TextStyle(color: white),
                                border: OutlineInputBorder(),
                                fillColor: textFieldColor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width - 30,
                          child: TextFormField(
                            controller: _emailController,
                            style: TextStyle(color: white),
                            decoration: InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(color: white),
                                border: OutlineInputBorder(),
                                fillColor: textFieldColor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width - 30,
                          child: TextFormField(
                            controller: _passwordController,
                            style: TextStyle(color: white),
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: white),
                                border: OutlineInputBorder(),
                                fillColor: textFieldColor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width - 30,
                          child: TextFormField(
                            controller: _retypedController,
                            style: TextStyle(color: white),
                            decoration: InputDecoration(
                                hintText: 'Re-Type password',
                                hintStyle: TextStyle(color: white),
                                border: OutlineInputBorder(),
                                fillColor: textFieldColor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18))),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: InkWell(
                            onTap: () {},
                            child: MainButton(title: 'Sign In'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'signIn');
                          },
                          child: Text('Login'),
                        )
                      ],
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
