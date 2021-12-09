import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final String text;

  const CircleButton({Key? key, required this.text}) : super(key: key);

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.text,
            style: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        style: TextButton.styleFrom(
          primary: Colors.black,
          side: const BorderSide(color: Colors.black, width: 1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
        onPressed: () {},
      ),
    );
  }
}
