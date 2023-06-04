import 'package:flutter/material.dart';

class GrayLine extends StatelessWidget {
  final color;
  const GrayLine({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: (color == null) ? const Color.fromRGBO(231, 231, 231, 1) : color,
    );
  }
}
