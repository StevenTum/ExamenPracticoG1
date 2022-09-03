import 'package:exam_g1/services/auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class SignIn extends StatefulWidget {
  SignIn({required Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Inicia con Google'),
          onPressed: () async {
            await authService.googleSignIn();
          },
        ),
      ),
    )
  }
}