

import 'package:flutter/material.dart';


class PrimataText extends StatelessWidget {
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String text;
  
  PrimataText({
    required this.color, 
    required this.size, 
    required this.fontWeight, 
    required this.text, 
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.visible,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight),
    );
  }
}
