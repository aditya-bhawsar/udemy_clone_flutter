import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {

  const CategoriesList({Key? key}) : super(key: key);

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {

  var categories = [
    "Development",
    "Business",
    "Finance & Accounting",
    "IT & Software",
    "Office Productivity",
    "Personal Development",
    "Design",
    "Marketing",
    "Lifestyle",
    "Photography & Video",
    "Health & Fitness",
    "Music",
    "Teaching & Academics"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (int i=0; i<categories.length; i++)
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 2.0, right: 2.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(flex: 1 ,child: Icon(Icons.business, size: 20,)),
                  Expanded(flex: 7,child: Text(categories[i])),
                ],
              ),
          ),
      ],
    );
  }
}
