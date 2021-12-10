import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/widget/courselist.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/header.png'),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  'Learning that fits',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Skills for your present (and future)'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
                child: Container(
                  color: Colors.yellow.shade200,
                  width: 400,
                  height: 35,
                  child: const Center(
                    child: Text('Future-ready skills on your schedule'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                child: Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: true,),),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                          text: 'Top courses in '),
                      TextSpan(
                        text: 'Design',
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: false,),),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                          text: 'Top courses in '),
                      TextSpan(
                        text: 'Business',
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: false,),),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Top Companies trust Udemy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: SizedBox(
                        height: 60,
                        width: 400,
                        child: Image(
                          image: AssetImage('assets/company.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Try Udemy Business',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                          text: 'Top courses in '),
                      TextSpan(
                        text: 'Development',
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: true,),),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                          text: 'Top courses in '),
                      TextSpan(
                        text: 'IT & Software',
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: true,),),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                          text: 'Top courses in '),
                      TextSpan(
                        text: 'Personal Development',
                        style: const TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: true,),),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 20),
                child: Text(
                  'Students are viewing',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: false,),),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 20),
                child: Text(
                  'Short and sweet courses for you',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 290,
                child: const CourseList(isLargeTiled: false,),),
            ],
          ),
        ),
      ),
    );
  }
}
