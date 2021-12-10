import 'package:flutter/material.dart';
import 'package:udemy_clone/data/course.dart';

class CourseList extends StatefulWidget {
  final bool isLargeTiled;

  const CourseList({Key? key, required this.isLargeTiled}) : super(key: key);

  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  var courseList = [
    Course(
      'assets/course_1.png',
      'Powerpoint for so many people rest is a controversial',
      'Dustin Holloway',
      '56,900',
      4.5,
      '\$ 59.56',
      true,
      false,
    ),
    Course(
      'assets/course_2.png',
      'Excel masterclass in its worst',
      'Dustin Holloway and some other friends',
      '16,087',
      4.6,
      '\$ 19.56',
      false,
      false,
    ),
    Course(
      'assets/course_3.png',
      'How mathematics is the universal language',
      'Max Plank',
      '22,007',
      4.4,
      '\$ 29.56',
      true,
      false,
    ),
    Course(
      'assets/course_4.png',
      'My lost notes and the mystery behind the event horizon solved full',
      'Sir Issac Newton',
      '15,447',
      4.6,
      '\$ 39.56',
      false,
      false,
    ),
    Course(
      'assets/course_5.png',
      'From internet to web3 all about it masterclass and what not just',
      'Tim Berners Lee',
      '44,886',
      4.5,
      '\$ 49.56',
      false,
      true,
    ),
    Course(
      'assets/course_6.png',
      'How electricity is formed with dc connection and so much more',
      'Sir Nikola Tesla the Great',
      '32,986',
      4.6,
      '\$ 9.56',
      true,
      false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    courseList.shuffle();

    return ListView.builder(
        shrinkWrap: true,
        itemCount: courseList.length + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if(index == courseList.length){
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text('See all', style: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.bold),),
                )
              ],
            );
          }
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: widget.isLargeTiled? 100: 80,
                  width: widget.isLargeTiled? 200: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(courseList[index].image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: widget.isLargeTiled? 200: 170),
                    child: Text(
                      courseList[index].title,
                      maxLines: widget.isLargeTiled? 2: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: widget.isLargeTiled? 200: 170),
                    child: Text(
                      courseList[index].owner,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        courseList[index].star.toString() + ' ',
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      const Icon(
                        Icons.star_half,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      Text(
                        '  (' + courseList[index].students + ')',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    courseList[index].price,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                if (courseList[index].isBestSeller) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Bestseller'),
                      ),
                    ),
                  )
                ] else if (courseList[index].isHighRated) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown.shade300),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Highly Rated'),
                      ),
                    ),
                  )
                ] else ...[
                  const Padding(padding: EdgeInsets.all(12))
                ],
              ],
            ),
          );
        });
  }
}
