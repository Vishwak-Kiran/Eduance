import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eduance/models/course.dart';
import 'package:eduance/screens/detail/widget/course_description.dart';
import 'package:eduance/screens/detail/widget/custom_app_bar.dart';
import 'package:eduance/screens/home/widget/course_progress.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(course),
          CourseDescription(course),
          CourseProgress(),
        ],
      ),
    ));
  }
}

class DetailPage1 extends StatelessWidget {
  final Course1 course1;
  DetailPage1(this.course1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar1(course1),
          CourseDescription1(course1),
          CourseProgress1(),
        ],
      ),
    ));
  }
}

class DetailPage2 extends StatelessWidget {
  final Course2 course2;
  DetailPage2(this.course2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar2(course2),
          CourseDescription2(course2),
          CourseProgress2(),
        ],
      ),
    ));
  }
}
