import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "Signup Page",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          CustomField(),
          CustomField(),
        ],
      ),
    );
  }
}
