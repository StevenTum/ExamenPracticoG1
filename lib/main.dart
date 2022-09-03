import 'package:exam_g1/pages/home.dart';
import 'package:exam_g1/pages/sign_in.dart';
import 'package:exam_g1/services/auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(App(key: null,));

class App extends StatefulWidget {
  App({required Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}


class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService.instance(),
      child: MaterialApp(
          initialRoute: '/',
          routes: {
            // Rutas
          },
          debugShowCheckedModeBanner: false,
          title: 'Firebase Auth con Provider',
          home: Consumer(
            builder: (context, AuthService authService, _) {
              switch (authService.status) {
                case AuthStatus.Uninitialized:
                  return Text('Cargando');
                case AuthStatus.Authenticated:
                  return Home(key: null,);
                case AuthStatus.Authenticating:
                  return SignIn(key: null,);
                case AuthStatus.Unauthenticated:
                  return SignIn(key: null,);
              }
              return null;
            },
          )
      ),
    );
  }

  Consumer({required Widget? Function(dynamic context, AuthService authService, dynamic _) builder}) {}
}