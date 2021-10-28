import 'package:flutter/material.dart';
import 'package:eduance/auth/constants.dart';

//import '../constants.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                controller: _passwordField,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirm Password",
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
