import 'package:flutter/material.dart';
//import 'package:flutter_application_1/core/theme/theme.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  const CustomField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
