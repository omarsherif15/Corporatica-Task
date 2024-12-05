import 'package:flutter/material.dart';

class CustomizedText extends StatelessWidget {
  const CustomizedText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 15,
      this.weight = FontWeight.normal,
      this.isDiscount = false,
      });

  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(
        decoration: isDiscount ? TextDecoration.lineThrough : null,
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
