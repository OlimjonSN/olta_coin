import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';

class MyWidget extends StatelessWidget {
  final String title;
  Function pressed;
  MyWidget({
    super.key,
    required this.title,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [buttonColorA, buttonColorB],
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
