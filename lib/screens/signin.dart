import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udemy_clone/widget/authbutton.dart';

class SignInScreen extends StatefulWidget {
  final bool forSignIn;

  const SignInScreen({Key? key, required this.forSignIn}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 12.0),
              child: Text(
                widget.forSignIn ? 'Sign In' : 'Create an Account',
                textAlign: TextAlign.center,
                style:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 12.0),
                  children: [
                    const TextSpan(
                        text:
                        'By using our services you  are agreeing to our\n'),
                    TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    const TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Statement',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ]),
              textAlign: TextAlign.center,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 25, right: 25),
              child: AuthButton(text: 'Sign in with email',iconData: FontAwesomeIcons.envelope,),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 25, right: 25),
              child: AuthButton(text: 'Sign in with Google',iconData: FontAwesomeIcons.google,),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 25, right: 25),
              child: AuthButton(text: 'Sign in with Facebook',iconData: FontAwesomeIcons.facebook,),
            ),
            widget.forSignIn?
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 25, right: 25),
              child: AuthButton(text: 'Sign In with Apple',iconData: FontAwesomeIcons.apple,),
            ):const Text(''),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: const TextStyle(fontSize: 14.0, color: Colors.black),
                children: [
                  TextSpan(
                      text: widget.forSignIn
                          ? 'New here?  '
                          : 'Have an account?    '
                  ),
                  TextSpan(
                      text: widget.forSignIn ? 'Create an account' : 'Sign In',
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)
                  )
                ]
            ),
          ),
        )
      ],
    );
  }
}