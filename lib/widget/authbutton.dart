import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/screens/home.dart';

class AuthButton extends StatefulWidget {

  final String text;
  final IconData iconData;

  const AuthButton({Key? key, required this.text, required this.iconData }) : super(key: key);

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {

  void openMainScreen() {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(child: const HomeScreen(), type: PageTransitionType.fade),
          (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        openMainScreen();
      },
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,  // red as border color
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: FaIcon(widget.iconData),
                ) ,
                Text(widget.text, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
          )
      ),
    );
  }
}