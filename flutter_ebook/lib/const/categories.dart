import 'package:flutter/material.dart';

@immutable
class CategoriesText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const CategoriesText({
    Key? key,
    required this.text,
    required this.size,
    this.color = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size, fontWeight: FontWeight.normal),
    );
  }
}
