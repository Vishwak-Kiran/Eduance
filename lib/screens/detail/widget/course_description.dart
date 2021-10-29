import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  course.authorImg,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  course.author,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: kFontLight,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.access_time_filled,
                  size: 20,
                  color: kAccent,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '8 min',
                  style: TextStyle(
                      color: kFont, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              course.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase.',
              style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: kFontLight),
            )
          ],
        ));
  }
}

class CourseDescription1 extends StatelessWidget {
  final Course1 course1;
  CourseDescription1(this.course1);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  course1.authorImg,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  course1.author,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: kFontLight,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.access_time_filled,
                  size: 20,
                  color: kAccent,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '15 min',
                  style: TextStyle(
                      color: kFont, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              course1.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Front-end web development is the practice of producing HTML, CSS and JavaScript for a website so that a user can see and interact with them directly.',
              style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: kFontLight),
            )
          ],
        ));
  }
}

class CourseDescription2 extends StatelessWidget {
  final Course2 course2;
  CourseDescription2(this.course2);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  course2.authorImg,
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  course2.author,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: kFontLight,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.access_time_filled,
                  size: 20,
                  color: kAccent,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '6 min',
                  style: TextStyle(
                      color: kFont, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              course2.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Java is a powerful general-purpose programming language. It is used to develop desktop and mobile applications, big data processing, embedded systems, and so on',
              style: TextStyle(
                  wordSpacing: 2,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: kFontLight),
            )
          ],
        ));
  }
}
