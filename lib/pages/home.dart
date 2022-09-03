import 'package:exam_g1/services/auth.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({required Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Cerrar Sesión ${authService.user.displayName}'),
          onPressed: () {
            authService.signOut();
          },
        ),
      ),
    );
  }
}

class Provider {
  static of(BuildContext context) {}
}