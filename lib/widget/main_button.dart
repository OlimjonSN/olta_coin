import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';

class MainButton extends StatefulWidget {
  final String title;
  MainButton({
    super.key,
    required this.title,
  });

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [buttonColorA, buttonColorB],
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
