import 'package:flutter/material.dart';

//import 'package:auth/constants.dart';
import 'package:eduance/auth/constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                obscureText: true,
                controller: _passwordField,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
