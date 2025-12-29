import 'package:flutter/material.dart';
//import 'package:flutter_application_1/core/theme/theme.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(hintText: 'Name'));
  }
}
