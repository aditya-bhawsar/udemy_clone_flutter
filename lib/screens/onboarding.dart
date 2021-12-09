import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/screens/authentication.dart';
import 'package:udemy_clone/screens/home.dart';
import 'package:udemy_clone/screens/onboardingpage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  void openAuthScreen() {
    Navigator.push(
        context,
        PageTransition(child: const AuthScreen(), type: PageTransitionType.fade)
    );
  }

  void openHomeScreen() {
    Navigator.pushReplacement(
      context,
      PageTransition(child: const HomeScreen(), type: PageTransitionType.fade),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            OnBoardingPageScreen(
              title: 'Take Video Courses',
              desc: 'From cooking to coding\nand everything in between',
              image: 'assets/video_on.png',
            ),
            OnBoardingPageScreen(
              title: 'Learn from the Best',
              desc: 'Approachable expert-instructors,\nvetted by 35 million learners',
              image: 'assets/best_on.png',
            ),
            OnBoardingPageScreen(
              title: 'Go at Your Own Pace',
              desc: 'Lifetime access to purchased courses,\nanytime, anywhere',
              image: 'assets/pace_on.png',
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  openHomeScreen();
                },
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Browse',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  openAuthScreen();
                },
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
