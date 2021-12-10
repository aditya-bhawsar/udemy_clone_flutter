import 'dart:ffi';

class Course {

  String image;
  String title;
  String owner;
  String students;
  double star;
  String price;
  bool isBestSeller;
  bool isHighRated;

  Course(this.image, this.title, this.owner, this.students, this.star,
      this.price, this.isBestSeller, this.isHighRated);
}