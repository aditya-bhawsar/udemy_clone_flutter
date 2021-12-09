import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/screens/home.dart';
import 'package:udemy_clone/screens/signin.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView.builder(
        itemBuilder: (context, position) {
          return Container(
            child: position % 2 == 0
                ? const SignInScreen(
                    forSignIn: true,
                  )
                : const SignInScreen(
                    forSignIn: false,
                  ),
          );
        },
      )),
    );
  }
}




