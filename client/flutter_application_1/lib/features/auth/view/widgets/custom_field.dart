import 'package:flutter/material.dart';
//import 'package:flutter_application_1/core/theme/theme.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,

        border: OutlineInputBorder(),
      ),
      obscureText: isObscureText,
    );
  }
}
