import 'package:flutter/material.dart';
import 'package:udemy_clone/widget/categorieslist.dart';
import 'package:udemy_clone/widget/explainsection.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Wishlist',
          style: TextStyle(color: Colors.black),
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
                title: 'Want to save something for later?',
                desc: 'Your wishlist will go here.'
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
