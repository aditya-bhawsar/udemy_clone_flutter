import 'package:flutter/material.dart';
import 'package:udemy_clone/widget/categorieslist.dart';
import 'package:udemy_clone/widget/explainsection.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({Key? key}) : super(key: key);

  @override
  _LearningScreenState createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text('All Courses', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_drop_down, color: Colors.black,)
          ],
        ),
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
            children: const [
              ExplainSection(
                  title: 'What will you learn first?',
                  desc: 'Your courses will go here.'
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Browse Categories', style: TextStyle(color: Colors.black, fontSize: 18),),
              ),
              CategoriesList(),
              Padding(padding: EdgeInsets.all(30))
            ],
          ),
        ),
      ),
    );
  }
}
