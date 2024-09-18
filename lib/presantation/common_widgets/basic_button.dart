import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final double? height;
  final double? textsize;
  final VoidCallback onPressed;
  final String text;
  const BasicButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.height,
      this.textsize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 80),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: textsize),
        ));
  }
}
