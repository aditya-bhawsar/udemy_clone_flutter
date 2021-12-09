import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingPageScreen extends StatefulWidget {
  final String title;
  final String desc;
  final String image;

  const OnBoardingPageScreen(
      {Key? key, required this.title, required this.desc, required this.image})
      : super(key: key);

  @override
  _OnBoardingPageScreenState createState() => _OnBoardingPageScreenState();
}

class _OnBoardingPageScreenState extends State<OnBoardingPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 250.0,
              width: 300.0,
              child: Image(
                image: AssetImage(widget.image),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(widget.desc, textAlign: TextAlign.center)
            ],
          )
        ],
      ),
    );
  }
}
