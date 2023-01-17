import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
        ),
        fixedSize: Size(372, 70),
      ),
    );
  }
}
