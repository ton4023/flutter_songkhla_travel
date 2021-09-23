

import 'package:flutter/material.dart';


class PrimataText extends StatelessWidget {
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String text;
  final TextOverflow overflow;
  
  PrimataText({
    required this.color, 
    required this.size, 
    required this.fontWeight, 
    required this.text, 
    required this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight),
    );
  }
}
