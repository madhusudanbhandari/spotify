import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/view/widgets/auth_gradient_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Signup Page",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            CustomField(hintText: 'Name'),
            SizedBox(height: 10),
            CustomField(hintText: 'Email'),
            SizedBox(height: 10),
            CustomField(hintText: 'Password'),
            SizedBox(height: 10),
            AuthGradientButton(),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'Already have an account?',
                style: Theme.of(context).textTheme.titleMedium,
                children: [TextSpan(text: ' Login')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
