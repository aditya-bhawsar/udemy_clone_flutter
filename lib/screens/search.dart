import 'package:flutter/material.dart';
import 'package:udemy_clone/widget/categorieslist.dart';
import 'package:udemy_clone/widget/circlebutton.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 45,
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.search, color: Colors.black,),
                      const Padding(padding: EdgeInsets.all(8)),
                      Text('Search',style: TextStyle(color: Colors.grey.shade700, fontSize: 16),),
                    ],
              ), onPressed: (){},
          )
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
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Top searches',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                children: const [
                  CircleButton(text: 'python'),
                  CircleButton(text: 'java'),
                  CircleButton(text: 'javascript'),
                  CircleButton(text: 'excel'),
                  CircleButton(text: 'react'),
                  CircleButton(text: 'sql'),
                  CircleButton(text: 'aws'),
                  CircleButton(text: 'unity'),
                  CircleButton(text: 'c#'),
                  CircleButton(text: 'wordpress'),
                  CircleButton(text: 'photoshop'),
                  CircleButton(text: 'php'),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Browse categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const CategoriesList(),
            ],
          ),
        ),
      ),
    );
  }
}
