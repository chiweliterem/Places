import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String name;
  final TextStyle style;

  const CustomLabel({super.key, required this.name, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(name, style: style);
  }
}
