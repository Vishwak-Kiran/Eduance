import 'package:flutter/material.dart';
import 'package:eduance/models/course.dart';
import 'package:eduance/screens/home/home.dart';
import 'package:eduance/screens/home/widget/category_title.dart';
import 'package:eduance/screens/home/widget/course_item.dart';

// ignore: use_key_in_widget_constructors
class FeatureCourse3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Assistant', ' '),

        // ignore: sized_box_for_whitespace
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(
                            title: 'Eduance',
                          )));
            },
            child: Text('Open'))
      ],
    );
  }
}

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Mobile App Developer', 'View All'),
        // ignore: sized_box_for_whitespace
        Container(
          height: 300,
          child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 15)),
        )
      ],
    );
  }
}

class FeatureCourse1 extends StatelessWidget {
  final coursesList1 = Course1.generateCourses1();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Web Developer', 'View All'),
        // ignore: sized_box_for_whitespace
        Container(
          height: 300,
          child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList1.length,
              itemBuilder: (context, index) => CourseItem1(coursesList1[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 15)),
        )
      ],
    );
  }
}

class FeatureCourse2 extends StatelessWidget {
  final coursesList2 = Course2.generateCourses2();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Programmer', 'View All'),
        // ignore: sized_box_for_whitespace
        Container(
          height: 300,
          child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList2.length,
              itemBuilder: (context, index) => CourseItem2(coursesList2[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 15)),
        )
      ],
    );
  }
}
