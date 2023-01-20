import 'package:flutter/material.dart';
import 'package:olta_coin/models/add_color.dart';

class MainButton extends StatefulWidget {
  final String title;
  Function route;
  MainButton({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: widget.route(),
        child: Ink(
          height: 55,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
              colors: [buttonColorA, buttonColorB],
            ),
          ),
          child: Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ),
      ),
      // GestureDetector(
      //   onTap: widget.route(),
      //   child: Container(
      //     height: 50,
      //     width: MediaQuery.of(context).size.width - 30,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(19),
      //       gradient: LinearGradient(
      //         begin: Alignment.centerLeft,
      //         end: Alignment.centerRight,
      //         colors: [buttonColorA, buttonColorB],
      //       ),
      //     ),
      //     child: Center(
      //         child: Text(
      //       widget.title,
      //       style: TextStyle(
      //         fontWeight: FontWeight.w900,
      //         color: Colors.black,
      //       ),
      //     )),
      //   ),
      // ),
    );
  }
}
